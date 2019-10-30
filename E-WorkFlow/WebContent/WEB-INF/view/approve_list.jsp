<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>รายการอนุมัติ <small>ณ วันที่ ${current_date}</small></h1>
      <ol class="breadcrumb">
        <li><i class="fa fa-dashboard"></i> รายการอนุมัติ</li>
      </ol>
    </section>
    <hr/>

    <!-- Main content -->
    <section class="content">
<!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>${list_total_count}</h3>
              <p>เอกสารทั้งหมด</p>
            </div>
            <div class="icon">
              <i class="ion ion-document-text"></i>
            </div>
            <a href="#" class="small-box-footer">รายละเอียดเพิ่มเติม <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>${list_wait_count}</h3>

              <p>รอการอนุมัติ</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-alarm-clock"></i>
            </div>
            <a href="approve_sub_list.htm" class="small-box-footer">รายละเอียดเพิ่มเติม <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>${list_approve_count}</h3>

              <p>อนุมัติแล้ว</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-checkmark"></i>
            </div>
            <a href="#" class="small-box-footer">รายละเอียดเพิ่มเติม <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>${list_not_approve_count}</h3>

              <p>ไม่อนุมัติ</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-cancel"></i>
            </div>
            <a href="#" class="small-box-footer">รายละเอียดเพิ่มเติม <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
      <!-- /.row -->
<%@ include file="footer.jsp" %>