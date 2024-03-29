<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>회원가입</title>

    <!-- Custom fonts for this template-->
    <link href="<%=request.getContextPath() %>/resource/startbootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<%=request.getContextPath() %>/resource/startbootstrap/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <form method="post" action="joinAction.jsp" onsubmit="return showPopup()">
                    <div class="row">
                        <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                        <div class="col-lg-7">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">회원가입 페이지</h1>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" placeholder="아이디" name="userID" maxlength="20" style="text-align: left;">
                                </div>
                                
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" id="userPassword"
                                        placeholder="비밀번호" name="userPassword">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email Address" name="userEmail">
                                </div>
                                
                                <div class="form-group">

						<input type="text" class="form-control" placeholder="이름"

							name="userName" maxlength="20">

					</div>

					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active"> <input
								type="radio" name="userGender" autocomplete="off" value="남자"
								checked>남자
							</label> <label class="btn btn-primary"> <input type="radio"
								name="userGender" autocomplete="off" value="여자" >여자

							</label>

						</div>

					</div>
                                
                                
                                
                                
                                
                                <button type="submit" class="btn btn-primary btn-user btn-block">
                                    Register Account
                                </button>
                                <hr>
                                <!--
                                <a href="index.jsp" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.jsp" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>
                                -->
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<%=request.getContextPath() %>/resource/startbootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/resource/startbootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<%=request.getContextPath() %>/resource/startbootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<%=request.getContextPath() %>/resource/startbootstrap/js/sb-admin-2.min.js"></script>
    

</body>

</html>
