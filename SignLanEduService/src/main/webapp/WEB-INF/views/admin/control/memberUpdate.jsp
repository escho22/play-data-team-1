<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin - Member Update</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />

<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@1,700&display=swap"
	rel="stylesheet" />


<!-- Core theme CSS (includes Bootstrap)-->
<link href="<%=request.getContextPath()%>/css/styles.css"
	rel="stylesheet" type="text/css" />

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
</head>
<body>
<section class="signup">
		<div class="container px-6">
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg-6">
							<div class="p-6">
								<div class="text-center">
									<h1 class="h3 text-gray-900 mb-5 font-card">${memberVO.m_id }님의
										정보 수정</h1>
								</div>
								
								<form class="user" name='frm' id='frm' method='POST'
									action='<%=request.getContextPath()%>/admin/control/memberUpdate' class="form-horizontal">
									
									<div class="form-group row">
										<div class="col-sm-6 mb-4 mb-sm-0">
											<label class="form-control form-control-user">회원번호</label>
										</div>
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type='text' class="form-control form-control-user"
												name='m_num' id='m_num' value='${memberVO.m_num }'
												required="required" readonly="readonly">
										</div>									
									</div>
									
									<div class="form-group row">
										<div class="col-sm-6 mb-4 mb-sm-0">
											<label class="form-control form-control-user">아이디</label>
										</div>
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type='text' class="form-control form-control-user"
												name='m_id' id='m_id' value='${memberVO.m_id }'
												required="required" readonly="readonly">
										</div>									
									</div>

									<div class="form-group row">
										<div class="col-sm-6 mb-4 mb-sm-0">
											<label class="form-control form-control-user">비밀번호</label>
										</div>
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type='text' class="form-control form-control-user"
												name='m_pw' id='m_pw' value='${memberVO.m_pw }'
												required="required" placeholder="* Password">
										</div>
									</div>

									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">이름</label>
										</div>
										<div class="col-sm-6">
											<input type='text' class="form-control form-control-user"
												name='m_name' id='m_name' value='${memberVO.m_name }'
												required="required" placeholder="* Name">
										</div>
									</div>

									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">생년월일</label>
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control form-control-user"
												name='m_birth' id="m_birth" value='${memberVO.m_birth }'
												placeholder="Birth">
										</div>
									</div>

									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">성별</label>
										</div>
										<div class="col-sm-6">
											<div class="form-control form-control-user">
												<input type="radio" name="m_sex" id="m_sex0" value="0" checked="checked">남성
												<input type="radio" name="m_sex" id="m_sex1" value="1">여성
											</div>
										</div>
									</div>				
									
									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">이메일</label>
										</div>
										<div class="col-sm-6">
											<input type='text' class="form-control form-control-user"
											name='m_email' id='m_email' value='${memberVO.m_email }'
											required="required" placeholder="* Email Address">
										</div>
									</div>
									
									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">가입일</label>
										</div>
										<div class="col-sm-6">
											<label class="form-control form-control-user" style="background-color:#e9ecef" >${memberVO.m_register }</label>
										</div>
									</div>
									<input type="hidden" name='m_register' id="m_register" value='${memberVO.m_register }'>
									
									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">최근로그인</label>
										</div>
										<div class="col-sm-6">
											<label class="form-control form-control-user" style="background-color:#e9ecef" >${memberVO.m_recent }</label>
										</div>
									</div>
									<input type="hidden" name='m_register' id="m_register" value='${memberVO.m_recent }'>

									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">포인트</label>
										</div>
										<div class="col-sm-6">
											<input type='text' class="form-control form-control-user"
											name='m_point' id='m_point' value='${memberVO.m_point }'
											required="required" placeholder="* point">
										</div>
									</div>
									
									<div class="form-group row">
										<div class="col-sm-6">
											<label class="form-control form-control-user">관리자여부</label>
										</div>
										<div class="col-sm-6">
											<div class="form-control form-control-user">
												<input type="radio" name="m_is_admin" id="m_is_admin0" value="0" checked="checked">일반회원
												<input type="radio" name="m_is_admin" id="m_is_admin1" value="1">관리자
											</div>
										</div>
									</div>
									
									
									<div class="form-group row">
										<div class="col-sm-12 mb-3" align="right">
											<button id='btn_send'
												class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">Update</button>
											<button type="button" onclick="location.href='<%=request.getContextPath()%>/admin/control/choose'"
												class="btn btn-primary rounded-pill mb-lg-0">Cancel</button>
										</div>
										<hr>
									</div>
									</form>
								<div class="col-lg-6 d-none d-lg-block bg-register-image"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>