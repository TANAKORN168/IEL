<%@ include file="../header.jsp" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
		
    <section class="content-header">
      <h1>ใบ PR<small>เฉพาะดำเนินการ</small></h1>
      <ol class="breadcrumb">
        <li><a href="home.htm"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">ใบ PR</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box box-primary">
            <div class="box-header">
              <div class="row">
				<div class="col-md-5">
					<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						<i class="fa fa-plus"></i> สร้าง
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="add_edit_purchase_requisition.htm?type=EXPENSE">ค่าใช้จ่าย</a></li>
						<li><a href="add_edit_purchase_requisition.htm?type=ASSET">ทรัพย์สิน</a></li>
						<li><a href="add_edit_purchase_requisition.htm?type=STOCK">Stock</a></li>
					</ul>
				</div>
				<!-- /.col -->
				<div class="col-md-3">

				</div>
				<div class="col-md-4">
					<div class="input-group input-group-sm hidden-xs" style="width: 300px;">
						<input type="text" name="table_search" class="form-control pull-right" placeholder="Search" style="height: 33px;">
						<div class="input-group-btn">
							<button type="submit" class="btn btn-default" style="height: 33px;"><i class="fa fa-search"></i></button>
						</div>
				  	</div>
				</div>
			</div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover table-bordered">
                <thead>
                  <tr class="bg-light-blue disabled ">
                    <th style="width: 10px">#</th>
					<th class="text-center">เลขที่เอกสาร</th>
					<th class="text-center">วันที่เอกสาร</th>
					<th class="text-center">ประเภท</th>
					<th class="text-center">หน่วยงาน</th>
                    <th class="text-center">หมายเหตุ</th>
                    <th class="text-center"></th>
                </tr>
                </thead>
                <tbody>
                	<c:forEach var="obj" items="${command}" varStatus="current"> 
                		<tr>
                			<td>${current.count}.</td>
                			 <td>
								<a href="add_edit_purchase_requisition.htm?type=ASSET">${obj.code}</a>
							</td>
							<td>${obj.doc_date}</td>
                			 <td>${obj.type}</td>
                			 <td>${obj.organization}</td>
                			 <td>${obj.remark}</td>
                			 <td align="center">
								 <a class="btn btn-info" style="height: 33px;"><i class="fa fa-mail-forward"></i>&nbsp;ส่งอนุมัติ</a>
								 <a class="btn btn-info" style="height: 33px;" data-toggle="modal" data-target="#popup_movement"><i class="fa fa-history"></i>&nbsp;ความเคลื่อนไหว</a>
							 </td>
                		</tr>
                	</c:forEach>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
	 </div>

	<!-- POPUP -->
	<div id="popup_movement" class="modal fade" role="dialog">
			<div class="modal-dialog" style="width: 80%;">
			<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">ความเคลื่อนไหว</h4>
					</div>
					<div class="modal-body">
						<table class="table table-striped table-bordered table-hover" style="margin-top: 5px;">
							<thead>
								<tr>
									<th width="10%">#</th>
									<th width="10%">รหัส</th>
									<th width="10%">วันที่</th>
									<th width="30%">รายละเอียด</th>
									<th width="40%">หมายเหตุ</th>
								</tr>
							</thead>
							<tbody id="list_popup_movement">
								<tr>
									<td>1</td>
									<td>PRAC2019110001</td>
									<td>11/11/2562</td>
									<td>PR - สร้าง</td>
									<td></td>
								</tr>
								<tr>
									<td>2</td>
									<td>PRAC2019110001</td>
									<td>12/11/2562</td>
									<td>PR - ตรวจทาน/ลงความเห็น</td>
									<td>ซื้อพนักงานเข้าใหม่</td>
								</tr>
								<tr>
									<td>3</td>
									<td>PRAC2019110001</td>
									<td>13/11/2562</td>
									<td>PR - อนุมัติ</td>
									<td>ขอด่วนนะครับ</td>
								</tr>
								<tr>
									<td>4</td>
									<td>POAC2019110001</td>
									<td>14/11/2562</td>
									<td>PO - สร้าง</td>
									<td></td>
								</tr>
								<tr>
									<td>5</td>
									<td>POAC2019110001</td>
									<td>14/11/2562</td>
									<td>PO - ตรวจทาน/ลงความเห็น</td>
									<td></td>
								</tr>
								<tr>
									<td>6</td>
									<td>POAC2019110001</td>
									<td>14/11/2562</td>
									<td>PO - อนุมัติ</td>
									<td></td>
								</tr>
								<tr>
									<td>7</td>
									<td>RCAC2019110001</td>
									<td>20/11/2562</td>
									<td>RECEIVE</td>
									<td>รับสินค้าเรียบร้อย สินค้าสภาพดีมาก</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

    </section>
    <script type="text/javascript">
    
    function send_approve(id){
    	var objFormJSP = new Object();
		objFormJSP.id = id;
		$.ajax({
			url: "${pageContext.request.contextPath}/send_approve.htm",
			type: 'POST',
			dataType: 'json',
			data: JSON.stringify(objFormJSP),
			contentType: 'application/json',
			mimeType: 'application/json',
			
			success: function (data) {
	        	$.each(data, function (index, data_response) {
					if(data_response.status == "SUCCESS"){
						window.location = "${pageContext.request.contextPath}/list_request_vender.htm";
					}
	        	});
	        },
			error:function(data,status,er) {
				alert("error: "+data+" status: "+status+" er:"+er);
			}
		});
    } 
    </script>
<%@ include file="../footer.jsp" %>