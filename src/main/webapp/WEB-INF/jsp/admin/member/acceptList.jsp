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

<body class="animated">
<div id="cl-wrapper">
	<div class="cl-sidebar">
		<div class="cl-toggle"><i class="fa fa-bars"></i></div>
		<div class="cl-navblock">
			<div class="menu-space">
			<!-- 관리자 레프트 메뉴 -->
			<%@ include file="../include/leftmenu.jsp"%>
			</div>
			<div class="text-right collapse-button" style="padding:7px 9px;">
				<input type="text" class="form-control search" placeholder="Search..." />
				<button id="sidebar-collapse" class="btn btn-default" style=""><i style="color:#fff;" class="fa fa-angle-left"></i></button>
			</div>
		</div>
	</div>
	<div class="container-fluid" id="pcont">
		<!-- TOP NAVBAR -->
		<div id="head-nav" class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-collapse">
					<ul class="nav navbar-nav navbar-right user-nav">
						<li class="dropdown profile_menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img alt="Avatar" src="images/avatars/avatar1.jpg"><span>admin (관리자)</span> <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">설정변경</a></li>
								<li><a href="#">공지사항</a></li>
								<li class="divider"></li>
								<li><a href="#">로그아웃</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav navbar-nav not-nav">
						<li class="button dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class=" fa fa-inbox"></i></a>
							<ul class="dropdown-menu messages">
								<li>
									<div class="nano nscroller has-scrollbar">
										<div class="content" tabindex="0" style="right: -15px;">
											<ul>
												<li>
													<a href="#">
														<img src="images/avatar2.jpg" alt="avatar"><span class="date pull-right">13 Sept.</span> <span class="name">Daniel</span> Hey! How are you?
													</a>
												</li>
												<li>
													<a href="#">
														<img src="images/avatar_50.jpg" alt="avatar"><span class="date pull-right">20 Oct.</span><span class="name">Adam</span> Hi! Can you fix my phone?
													</a>
												</li>
												<li>
													<a href="#">
														<img src="images/avatar4_50.jpg" alt="avatar"><span class="date pull-right">2 Nov.</span><span class="name">Michael</span> Regards!
													</a>
												</li>
												<li>
													<a href="#">
														<img src="images/avatar3_50.jpg" alt="avatar"><span class="date pull-right">2 Nov.</span><span class="name">Lucy</span> Hello, my name is Lucy
													</a>
												</li>
											</ul>
										</div>
										<div class="pane" style="display: none;">
											<div class="slider" style="height: 20px; top: 0px;"></div>
										</div>
									</div>
									<ul class="foot">
										<li><a href="#">View all messages</a></li>
									</ul>           
								</li>
							</ul>
						</li>
						<li class="button">
							<a class="toggle-menu menu-right push-body jPushMenuBtn" href="#"><i class="fa fa-bars"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<!--  컨텐츠 시작 -->
		<div class="cl-mcont">
			<div class="page-head">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">회원관리</a></li>
					<li class="active">승인처리</li>
				</ol>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="block-flat">
						<div class="header">
							<h3>회원가입 승인처리</h3>
						</div>
						<div class="content">
							<div class="table-responsive text-center">
								<table class="no-border hover">
									<thead class="no-border">
										<tr>
											<th class="text-center">번호</th>
											<th class="text-center">아이디</th>
											<th class="text-center">이름</th>
											<th class="text-center">연락처</th>
											<th class="text-center">이메일</th>
											<th class="text-center">가입일</th>
											<th class="text-center">승인</th>
										</tr>
									</thead>
									<tbody class="no-border">
										<tr>
											<td>1</td>
											<td><a href="#">admin</a></td>
											<td>관리자</td>
											<td>010-9999-7777</td>
											<td>admin@bizo.co.kr</td>
											<td>2014/09/30</td>
											<td><button type="button" class="btn btn-trans btn-success btn-rad btn-xs">승인</button><button type="button" class="btn btn-trans btn-danger btn-rad btn-xs">보류</button></td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="#">admin</a></td>
											<td>관리자</td>
											<td>010-9999-7777</td>
											<td>admin@bizo.co.kr</td>
											<td>2014/09/30</td>
											<td><button type="button" class="btn btn-trans btn-success btn-rad btn-xs">승인</button><button type="button" class="btn btn-trans btn-danger btn-rad btn-xs">보류</button></td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="#">admin</a></td>
											<td>관리자</td>
											<td>010-9999-7777</td>
											<td>admin@bizo.co.kr</td>
											<td>2014/09/30</td>
											<td><button type="button" class="btn btn-trans btn-success btn-rad btn-xs">승인</button><button type="button" class="btn btn-trans btn-danger btn-rad btn-xs">보류</button></td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="#">admin</a></td>
											<td>관리자</td>
											<td>010-9999-7777</td>
											<td>admin@bizo.co.kr</td>
											<td>2014/09/30</td>
											<td><button type="button" class="btn btn-trans btn-success btn-rad btn-xs">승인</button><button type="button" class="btn btn-trans btn-danger btn-rad btn-xs">보류</button></td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="#">admin</a></td>
											<td>관리자</td>
											<td>010-9999-7777</td>
											<td>admin@bizo.co.kr</td>
											<td>2014/09/30</td>
											<td><button type="button" class="btn btn-trans btn-success btn-rad btn-xs">승인</button><button type="button" class="btn btn-trans btn-danger btn-rad btn-xs">보류</button></td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="#">admin</a></td>
											<td>관리자</td>
											<td>010-9999-7777</td>
											<td>admin@bizo.co.kr</td>
											<td>2014/09/30</td>
											<td><button type="button" class="btn btn-trans btn-success btn-rad btn-xs">승인</button><button type="button" class="btn btn-trans btn-danger btn-rad btn-xs">보류</button></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="spacer spacer-bottom text-center">
								<button type="button" class="btn btn-success btn-flat"><i class="fa fa-check"></i> 전체 승인하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right side-chat">
	<div class="header">
		<h3>LOG</h3>
	</div>
	<div class="content">
		<p class="title">회원승인</p>
		<ul class="nav nav-pills nav-stacked contacts">
			<li><a href="#">25건 승인처리 했습니다</a></li>
			<li class="online"><a href="#"><i class="fa fa-circle-o"></i> John Doe</a></li>
			<li class="online"><a href="#"><i class="fa fa-circle-o"></i> Richard Avedon</a></li>
			<li class="busy"><a href="#"><i class="fa fa-circle-o"></i> Allen Collins</a></li>
		</ul>

		<p class="title">회원사관리</p>
		<ul class="nav nav-pills nav-stacked contacts">
			<li class="online"><a href="#"><i class="fa fa-circle-o"></i> Jaime Garzon</a></li>
			<li class="outside"><a href="#"><i class="fa fa-circle-o"></i> Dave Grohl</a></li>
			<li><a href="#"><i class="fa fa-circle-o"></i> Victor Jara</a></li>
		</ul>   

		<p class="title">팝업관리</p>
		<ul class="nav nav-pills nav-stacked contacts">
			<li><a href="#"><i class="fa fa-circle-o"></i> Ansel Adams</a></li>
			<li><a href="#"><i class="fa fa-circle-o"></i> Gustavo Cerati</a></li>
		</ul>

		<p class="title">1:1문의</p>
	</div>
</nav>

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