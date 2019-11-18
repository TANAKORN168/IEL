<%@ include file="../header.jsp" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
		
    <section class="content-header">
      <h1>ใบรับสินค้า<small>เฉพาะดำเนินการ</small></h1>
      <ol class="breadcrumb">
        <li><a href="home.htm"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">ใบรับสินค้า</li>
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
					<a href="add_edit_receive_order.htm" class="btn btn-info"><i class="fa fa-plus"></i> สร้าง</a>
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
              <table class="table table-hover table-bordered" style="width: 100%;">
                <thead>
                  <tr class="bg-light-blue disabled ">
                    <th style="width: 10px">#</th>
					<th class="text-center">เลขที่เอกสาร</th>
					<th class="text-center">วันที่เอกสาร</th>
					<th class="text-center">วันที่รับจริง</th>
					<th class="text-center">เลขที่ PO</th>
					<th class="text-center">ผู้ขาย</th>
					<th class="text-center">ราคา</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                	<c:forEach var="obj" items="${command}" varStatus="current"> 
                		<tr>
                			<td>${current.count}.</td>
							<td><a href="add_edit_receive_order.htm">${obj.code}</a></td>
							<td>${obj.doc_date}</td>
							<td>${obj.doc_date}</td>
							<td>${obj.po_code}</td>
							<td>${obj.vendor}</td>
							<td>${obj.price}</td>
							<td align="center">
								<a class="btn btn-info" style="height: 33px;" data-toggle="modal" data-target="#popup_print"><i class="fa fa-print"></i>&nbsp;พิมพ์ใบรับสินค้า</a>
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
		<div id="popup_print" class="modal fade" role="dialog">
			<div class="modal-dialog">
			<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">ใบรับสินค้า</h4>
					</div>
					<div class="modal-body">
						<table style="width: 100%;">
							<tr>
								<td>
									<div class="form-group">
										<img alt="" src="${pageContext.request.contextPath}/assets/img/pdf/receive.jpg" style="width: 100%">
									</div>
								</td>
							</tr>
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