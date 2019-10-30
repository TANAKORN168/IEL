<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>รายการอนุมัติ <small>ณ วันที่ ${current_date}</small></h1>
      <ol class="breadcrumb">
        <li><a href="approve_list.htm"><i class="fa fa-dashboard"></i> รายการอนุมัติ</a></li>
        <li>รายการอนุมัติแยกตามกลุ่ม</li>
      </ol>
    </section>
    <hr/>

    <!-- Main content -->
    <section class="content">
<!-- Small boxes (Stat box) -->
      <div class="row" >
      	<div class="col-lg-3 col-xs-3"></div>
		<div class="col-lg-6 col-xs-6">
			<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<c:forEach var="group_approve" items="${list_group_approve}" varStatus="current">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapse${current.count}">${group_approve.name}</a>
								<span class="badge label-warning">${group_approve.size}</span>
							</h4>
						</div>
						<div id="collapse${current.count}" class="panel-collapse collapse" >
							<c:forEach var="object_approve" items="${group_approve.list_object_approve}" varStatus="current">
								<div class="panel-body"><a href="approve.htm?id=${object_approve.id}">${object_approve.code} ${object_approve.discription}</a></div>
							</c:forEach>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-xs-3"></div>
		</div>
				<!-- /.row -->
				<%@ include file="footer.jsp"%>