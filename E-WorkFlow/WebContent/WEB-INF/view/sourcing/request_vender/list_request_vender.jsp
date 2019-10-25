<%@ include file="../../header.jsp" %>  
<%@ page language="java" contentType="text/html;charset=UTF-8" %>  
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
                  <tr>
                    <td>1.</td>
                    <td class="text-center"><a href="#">RE191012001</a></td>
					<td>12/10/2562</td>
					<td>นายกอการช่าง</td>
                    <td>088-888-8888</td>
                     <td class="text-center" style="vertical-align: middle;"><a href="#"><span class="label label-default">สร้าง</span></a></td>
                    <td>
						<a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-default">
							<i class="fa fa-print"></i> ใบเปิดหน้าบัญชี
						</a>
						<a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-default">
							<i class="fa fa-upload"></i> upload
						</a>
					</td>
                  </tr>
                  <tr>
                    <td>2.</td>
                    <td class="text-center"><a href="#">RE191012002</a></td>
					<td>12/10/2562</td>
					<td>นายสุรพล ดำเนินสะดวก</td>
                    <td>099-999-9999</td>
                     <td class="text-center" style="vertical-align: middle;"><a href="#"><span class="label label-default">สร้าง</span></a></td>
                    <td>
						<a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-default">
							<i class="fa fa-print"></i> ใบเปิดหน้าบัญชี
						</a>
						<a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-default">
							<i class="fa fa-upload"></i> upload
						</a>
					</td>
                  </tr>
                </tbody>
              </table>
              <div class="box-footer clearfix">
                <ul class="pagination pagination-sm no-margin pull-right">
                  <li><a href="#">«</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">»</a></li>
                </ul>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
	 </div>
	  <div class="modal fade" id="modal-default">
		<div class="modal-dialog">
		  <div class="modal-content">
			<div class="modal-header">
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span></button>
			  <h4 class="modal-title">พิมพ์บิล/บาร์โค้ด</h4>
			</div>
			<div class="modal-body clearfix">
				<a href="../demo/barcode.pdf" target="_blank" class="btn btn-app"><i class="fa fa-barcode"></i> พิมพ์บาร์โค้ด</a>
				<a href="../demo/Print.pdf" target="_blank" class="btn btn-app"><i class="fa fa-print"></i> พิมพ์บิลสลิป/ใบเสร็จรับเงิน</a>
				<a href="../demo/Information.pdf" target="_blank" class="btn btn-app"><i class="fa fa-print"></i> พิมพ์บิลขนส่ง</a>
				<a href="../demo/doc_return.pdf" target="_blank" class="btn btn-app"><i class="fa fa-print"></i> บาร์โค๊ดเอกสารนำกลับ</a>
			</div>
		  </div>
		  <!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
    </section>
	<script>
		$( document ).ready(function() {
			$("[data-code='ListBill']").parent().attr('class','active');
			$($("[data-code='ListBill']").parent().parents()).each(function( index ) {
				 if($( this ).prop("tagName") == 'UL'){
					 if($( this ).attr('class') == 'treeview-menu'){
						 $( this ).attr('style', 'display: block;');
					 } 
				}
				 if($( this ).prop("tagName") == 'LI'){
					 $( this ).attr('class', $( this ).attr('class')+" menu-open");
					 $( this ).attr('style', 'height: auto;');
				}  	
			});
		});
	</script>
<%@ include file="../../footer.jsp" %>