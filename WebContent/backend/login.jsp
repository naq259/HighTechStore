<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>HighTech</title>

<!-- Bootstrap -->
<link href="../backend/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../backend/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Animate.css -->
<link href="https://colorlib.com/polygon/gentelella/css/animate.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="../backend/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="login">
	<div>
		<a class="hiddenanchor" id="signup"></a> <a class="hiddenanchor"
			id="signin"></a>

		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
					<form method="post"
						action="<%=request.getContextPath()%>/admin/login">
						<h1>Đăng nhập</h1>
						<div>
							<input name="username" type="text" class="form-control" autocomplete="off"
								placeholder="Tên đăng nhập" required="required" />
						</div>
						<div>
							<input name="password" type="password" class="form-control"
								placeholder="Mật khẩu" required="required" />
						</div>
						<%
							String error = "";
							if (request.getAttribute("error") != null) {
								error = (String) request.getAttribute("error");
							}
						%>
						<h4 style="color: red;"><%=error%></h4>
						<div>
							<button type="submit" class="btn btn-default submit">Đăng
								nhập</button>
						</div>
					</form>
				</section>
			</div>

			<div id="register" class="animate form registration_form">
				<section class="login_content">
					<form>
						<h1>Create Account</h1>
						<div>
							<input type="text" class="form-control" placeholder="Username"
								required="" />
						</div>
						<div>
							<input type="email" class="form-control" placeholder="Email"
								required="" />
						</div>
						<div>
							<input type="password" class="form-control"
								placeholder="Password" required="" />
						</div>
						<div>
							<a class="btn btn-default submit" href="index.html">Submit</a>
						</div>

						<div class="clearfix"></div>

						<div class="separator">
							<p class="change_link">
								Already a member ? <a href="#signin" class="to_register">
									Log in </a>
							</p>

							<div class="clearfix"></div>
							<br />

							<div>
								<h1>
									<i class="fa fa-paw"></i> Gentelella Alela!
								</h1>
								<p>©2016 All Rights Reserved. Gentelella Alela! is a
									Bootstrap 3 template. Privacy and Terms</p>
							</div>
						</div>
					</form>
				</section>
			</div>
		</div>
	</div>
</body>
</html>