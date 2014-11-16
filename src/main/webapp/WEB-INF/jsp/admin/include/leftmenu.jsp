<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
				<div class="content">
					<div class="sidebar-logo">
						<div class="logo">
							<a href="#"></a>
						</div>
					</div>
					<div class="side-user">
						<div class="avatar">
							<img src="images/avatars/avatar1.jpg" alt="Avatar" />
						</div>
						<div class="info">
							<p>admin(관리자)<span><a href="#"><i class="fa fa-plus"></i></a></span></p>
							<p>안녕하세요! 즐거운 하루를~</p>
						</div>
					</div>
					<ul class="cl-vnavigation">
						<li><a href="/admin/member.list.do"><i class="fa fa-user"></i><span>회원관리</span></a>
							<ul class="sub-menu">
								<li><a href="/admin/member.acceptList.do">승인처리</a></li>
								<li><a href="/admin/member.list.do">회원목록</a></li>
								<li><a href="/admin/member.quitList.do">탈퇴내역</a></li>
							</ul>
						</li>
						<li class="active">
							<a href="/admin/agent.list.do"><i class="fa fa-briefcase"></i><span>회원사관리</span></a>
							<ul class="sub-menu">
								<li><a href="/admin/company.list.do">회원사목록</a></li>
								<li><a href="/admin/agent.list.do">에이전트</a></li>
							</ul>							
						</li>
						<li>
							<a href="#"><i class="fa fa-desktop"></i><span>팝업관리</span></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-comment"></i><span>1:1 문의</span></a>
						</li>
					</ul>
				</div>