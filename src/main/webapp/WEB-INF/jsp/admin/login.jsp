<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="images/icon.png">
	<title>BIZOmall admin</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,200,100' rel='stylesheet' type='text/css'>

	<!-- Bootstrap core CSS -->
	<link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="js/jquery.gritter/css/jquery.gritter.css" />
	<link rel="stylesheet" href="fonts/font-awesome-4/css/font-awesome.min.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="../../assets/js/html5shiv.js"></script>
	<script src="../../assets/js/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="js/jquery.nanoscroller/nanoscroller.css" />
	<link rel="stylesheet" type="text/css" href="js/jquery.codemirror/lib/codemirror.css">
	<link rel="stylesheet" type="text/css" href="js/jquery.codemirror/theme/ambiance.css">
	<link rel="stylesheet" type="text/css" href="js/jquery.vectormaps/jquery-jvectormap-1.2.2.css"  media="screen"/>
	<link href="css/style.css" rel="stylesheet" />	
</head>

<body class="texture">
<div id="cl-wrapper" class="login-container" style="opacity: 1; margin-left: 0px;">
	<div class="middle-login">
		<div class="block-flat">
			<div class="header">							
				<h3 class="text-center"><img class="logo-img" src="images/logo_bizo.png" alt="logo"></h3>
			</div>
			<div>
				<form style="margin-bottom: 0px !important;" class="form-horizontal" action="#">
					<div class="content">
						<h4 class="title">로그인이 필요합니다</h4>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input type="text" placeholder="아이디" id="username" class="form-control">
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-lock"></i></span>
										<input type="password" placeholder="비밀번호" id="password" class="form-control">
									</div>
								</div>
							</div>
							
					</div>
					<div class="foot">
						<!-- <button class="btn btn-default" data-dismiss="modal" type="button">Register</button> -->
						<button class="btn btn-primary" data-dismiss="modal" type="submit">로그인</button>
					</div>
				</form>
			</div>
		</div>
		<div class="text-center">©bizomall. All rights reserved.</div>
	</div>
</div>

<script src="js/jquery.js"></script>
<script src="js/jquery.cookie/jquery.cookie.js"></script>
<script src="js/jquery.pushmenu/js/jPushMenu.js"></script>
<script type="text/javascript" src="js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
<script type="text/javascript" src="js/jquery.sparkline/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="js/jquery.ui/jquery-ui.js" ></script>
<script type="text/javascript" src="js/jquery.gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="js/behaviour/core.js"></script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="js/jquery.codemirror/lib/codemirror.js"></script>
<script src="js/jquery.codemirror/mode/xml/xml.js"></script>
<script src="js/jquery.codemirror/mode/css/css.js"></script>
<script src="js/jquery.codemirror/mode/htmlmixed/htmlmixed.js"></script>
<script src="js/jquery.codemirror/addon/edit/matchbrackets.js"></script>
<script src="js/jquery.vectormaps/jquery-jvectormap-1.2.2.min.js"></script>
<script src="js/jquery.vectormaps/maps/jquery-jvectormap-world-mill-en.js"></script>
<script src="js/behaviour/dashboard.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>