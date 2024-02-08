package user;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {


	private Connection conn=null; 
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;

	// mysql에 접속해 주는 부분
	public UserDAO() { // 생성자 실행될때마다 자동으로 db연결이 이루어 질 수 있도록함

		try {
			String dbURL = "jdbc:mysql://localhost:3306/project_db?useUnicode=true&characterEncoding=utf8"; 
			String dbID = "root";
			String dbPassword = "qwer";
			//Class.forName("com.mysql.jdbc.Driver"); //예전버전
			Class.forName("com.mysql.cj.jdbc.Driver"); //최신버전
			
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace(); // 

		}
	}

	// 로그인을 시도하는 함수****
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM user WHERE userID = ?";

		System.out.println("넘어온아이디:"+userID);
		System.out.println("넘어온패스워드:"+userPassword);
		try {

			// pstmt : prepared statement 정해진 sql문장을 db에 삽입하는 형식으로 인스턴스가져옴
			pstmt = conn.prepareStatement(SQL);			
			// 물음표해당하는 내용을 유저아이디로, 매개변수로 이용.. 1)존재하는지 2)비밀번호무엇인지
			pstmt.setString(1, userID);
			// rs:result set 에 결과보관
			rs = pstmt.executeQuery();
			// 결과가 존재한다면 실행
			if (rs.next()) {
				// 패스워드 일치한다면 실행
				if (rs.getString(1).equals(userPassword)) {
					System.out.println("로그인성공");
					return 1; // 로그인 성공
				} else
				{
					System.out.println("아이디/비번 틀림");
					return 0; // 비밀번호 불일치
				}
			}			
			return -1; // 아이디가 없음 오류

		} catch (Exception e) {			
			e.printStackTrace();
		}

		return -2; // 데이터베이스 오류를 의미
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?,?,?,?,?)";
		try {

			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB 오류
	}

}

