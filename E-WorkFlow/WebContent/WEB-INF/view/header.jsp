<%@ include file="headerInclude.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>E-Workflow</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini ">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="home.htm" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>E</b>WF</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>E-Workflow</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            	<i class="fa fa-cogs"></i>
              	<span class="hidden-xs">Setting</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src= "${users.getUrl_img()}" class="img-circle" alt="User Image">

                <p style="color: black;">
                  ${users.getName()} - ${users.getPosition()}
                  <small>DI ${users.getCode()}</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-6 text-center">
                    <a href="#">แก้ไขรูป</a>
                  </div>
                  <div class="col-xs-6 text-center">
                    <a href="#">แก้ไขลายเซนต์</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="login.htm" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="${users.getUrl_img()}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p style="font-size: 12px; word-wrap: break-word;">${users.getName()}</p>
          <i class="fa fa-circle text-success"></i> <span style="color:#3498DB; word-wrap: break-word;">${users.getPosition()}</span>
        </div>
      </div>
      <!-- 
      <div style="margin-left: 15px; color: #3498DB;">
			<hr style="border-top:1px solid #3498DB">
			<b>บริษัท  : </b><span style="color: black;">${users.company_name}</span><br>
			<b>สายงาน : </b><span style="color: black;">${users.work_line_name}</span><br>
			<b>ฝ่าย : </b><span style="color: black;">${users.department_name}</span><br>
			<b>แผนก : </b><span style="color: black;">${users.section_name}</span><br>
			<b>ส่วนงาน : </b><span style="color: black;">${users.organization_name}</span>
			<hr style="border-top:1px solid #3498DB">
      </div>
       -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      	<c:choose>
		  <c:when test="${users.level > -1}">
		  	<li>
		  		<a href="approve_list.htm">
		  			<i class="fa fa-dashcube"></i> 
		  			<span>รายการอนุมัติ</span> 
		  			<c:choose>
		  				<c:when test="${approve_count > 0}">
		  					<span class="badge label-warning">${approve_count}</span>
		  				</c:when>
		  			</c:choose>
		  		</a>
		  	</li>
		  </c:when>
		</c:choose>
		
		<c:forEach var="menu" items="${list_menu}">
			<li class="treeview" style="height: auto;">
				<a href="#"> 
					<i class="fa fa-folder"></i> <span style="color: black;">${menu.name}</span>
					<span class="pull-right-container"> 
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu" >
					<c:forEach var="program" items="${menu.list_program}">
						<li>
							<a href="${program.url_link}">
								<i class="${program.icon}"></i> ${program.name}
							</a>
						</li>
					</c:forEach>
				</ul>
			</li>
		</c:forEach>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">