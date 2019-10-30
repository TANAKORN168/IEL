<%@ include file="../../header.jsp" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
		
    <section class="content-header">
      <h1>สร้างใบขอเปิดบัญชีผู้จำหน่าย<small>เฉพาะดำเนินการ</small></h1>
      <ol class="breadcrumb">
        <li><a href="home.htm"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">สร้างใบขอเปิดบัญชีผู้จำหน่าย</li>
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
				<a href="add_edit_request_vender.htm" class="btn btn-info"><i class="fa fa-plus"></i> สร้าง</a>
				</div>
				<!-- /.col -->
				<div class="col-md-3">
					 <select name="${status.expression}" class="form-control">
					   <option value="code">เลขที่ใบขอ</option>
					   <option value="name">วันที่สร้าง</option>
					 </select>
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
					<th class="text-center">เลขที่ใบขอ</th>
					<th class="text-center">วันที่สร้าง</th>
					<th class="text-center">ชื่อผู้ติดต่อ</th>
                    <th class="text-center">เบอร์โทรติดต่อ</th>
                    <th class="text-center">สถานะ</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                	<c:forEach var="obj" items="${command}" varStatus="current"> 
                		<tr>
                			<td>${current.count}.</td>
                			 <td class="text-center">
                			 	<c:choose>
									<c:when test="${obj.status_code eq '00' && !obj.send_approve}">
	                			 		<a href="add_edit_request_vender.htm?id=${obj.id}">${obj.request_vender_code}</a>
	                			 	</c:when>
	                			 	<c:otherwise>
	                			 		${obj.request_vender_code}
	                			 	</c:otherwise>
                			 	</c:choose>
                			 </td>
                			 <td>${obj.request_vender_date}</td>
                			 <td>${obj.contact_name1}</td>
                			 <td>${obj.contact_tel1}</td>
								<td class="text-center" style="vertical-align: middle;">
									<c:choose>
										<c:when test="${obj.status_code eq '00'}">
											<span class="label label-default">${obj.status_name}</span>
										</c:when>
										<c:when test="${obj.status_code eq '01'}">
											<span class="label label-primary">${obj.status_name}</span>
										</c:when>
										<c:when test="${obj.status_code eq '02'}">
											<span class="label label-success">${obj.status_name}</span>
										</c:when>
									</c:choose>
								</td>
								<td>
									<c:choose>
										<c:when test="${!obj.send_approve}">
											<a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-default" onclick="send_approve(${obj.id})">
												<i class="fa fa-share-square-o"></i> ส่งขออนุมัติ
											</a>
										</c:when>
									</c:choose>
									
									<!-- 
									<a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-default">
										<i class="fa fa-print"></i> ใบเปิดหน้าบัญชี
									</a>
									<a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-default">
										<i class="fa fa-upload"></i> upload
									</a>
									 -->
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
<%@ include file="../../footer.jsp" %>