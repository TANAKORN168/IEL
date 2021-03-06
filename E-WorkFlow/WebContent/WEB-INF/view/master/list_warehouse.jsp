<%@ include file="../header.jsp" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
		
    <section class="content-header">
      <h1>ข้อมูลคลัง</h1>
      <ol class="breadcrumb">
        <li><a href="home.htm"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">ข้อมูลคลัง</li>
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
					<a href="add_edit_warehouse.htm" class="btn btn-info"><i class="fa fa-plus"></i> สร้าง</a>
				</div>
				<!-- /.col -->
				<div class="col-md-3">

				</div>
				<div class="col-md-4">
          <div class="input-group input-group-sm hidden-xs" style="width: 300px;">
            <input type="text" id="txt_search" name="txt_search" class="form-control pull-right" placeholder="Search" style="height: 33px;">
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
                    <th style="width: 5%">#</th>
                    <th class="text-center" style="width: 10%">รหัสคลัง</th>
                    <th class="text-center" style="width: 20%">ชื่อคลัง</th>
					<th class="text-center" style="width: 20%">ที่อยู่</th>
					<th class="text-center" style="width: 10%">โทร</th>
					<th class="text-center" style="width: 10%">Email</th>
					<th class="text-center" style="width: 10%">Fax</th>
                    <th style="width: 15%"></th>
                </tr>
                </thead>
                <tbody id="body_list">
                	<c:forEach var="obj" items="${command}" varStatus="current"> 
                		<tr>
                			<td>${current.count}.</td>
	                      <td align="center">${obj.code}</td>
	                      <td>${obj.name}</td>
	                      <td>${obj.address}</td>
	                      <td>${obj.tel}</td>
	                      <td>${obj.email}</td>
	                      <td>${obj.fax}</td>
	                      <td align="center">
	                        <span class="badge bg-gay" style="cursor: pointer;">แก้ไข</span>
	                        <span class="badge bg-red" style="cursor: pointer;">ลบ</span>
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
	$("#txt_search").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#body_list tr").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
    </script>
<%@ include file="../footer.jsp" %>