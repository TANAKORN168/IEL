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
          <p style="font-size: 12px;">${users.getName()}</p>
          <i class="fa fa-circle text-success"></i> <span style="color:#3498DB">${users.getPosition()}</span>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      	<li><a href="dashboard.htm"><i class="fa fa-pie-chart"></i>Dashboard</a></li>
        <li class="header">ระบบจัดหา</li>
        <li><a href="list_request_vender.htm"><i class="fa fa-book"></i> <span>สร้างใบขอเปิดบัญชีผู้จำหน่าย</span></a></li>
        <li class="header">ระบบจัดซื้อ</li>
        <li><a href="main.htm"><i class="fa fa-book"></i> <span>สร้างใบ PR</span></a></li>
        <li><a href="ManageBill/ListBill.html"><i class="fa fa-book"></i> <span>สร้างใบ PA</span></a></li>
        <li><a href="ManageBill/ListBill.html"><i class="fa fa-book"></i> <span>สร้างใบ PO</span></a></li>
        <li class="header">ระบบทรัพย์สิน</li>
        <li><a href="import/ScanToCage.html"><i class="fa fa-book"></i> <span>Adjust ทรัพย์สิน</span></a></li>
        <li><a href="import/ListMoving.html"><i class="fa fa-book"></i> <span>สร้างใบโอนย้าย</span></a></li>
        <li><a href="import/ssss"><i class="fa fa-book"></i> <span>สร้างใบซ่อมแซม</span></a></li>
        <li><a href="import/ssss"><i class="fa fa-book"></i> <span>สร้างใบตัดจ่าย</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">