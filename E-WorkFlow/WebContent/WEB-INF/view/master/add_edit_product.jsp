<%
String view = request.getParameter("view");
if("info".equals(view)){
%>
	<%@ include file="../headerInclude.jsp" %>
<%
}else{
%>
	<%@ include file="../header.jsp" %>
<%
}
%>  

<style>
.tnk-title{
	font-weight: bold;
	font-size: 14px;
	text-align: right;
}

select[class^="form"]{
	height: 28px;
	padding: 5px;
	margin-top: 5px; 
}
</style>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content" >
    
    <section class="content-header">
      <h1><u>ข้อมูลสินค้า/บริการ</h1>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-6" style="padding-left: 0px;padding-right: 0px;">
				<div class="box box-primary">
					<div class="box-header">
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ประเภท</label>
									<select name="" class="form-control">
										<option value="">ค่าใช้จ่าย</option>
										<option value="">ทรัพย์สิน</option>
										<option value="">Stock</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>รหัสสินค้า</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>Barcode</label>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-barcode"></i></span>
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ชื่อสินค้า</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>รายละเอียด</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ประเภท</label>
									<div class="input-group">
										<input type="text" class="form-control">
										<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="ประเภท"><i class="fa fa-search"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>กลุ่ม</label>
									<div class="input-group">
										<input type="text" class="form-control">
										<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="กลุ่ม"><i class="fa fa-search"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ชนิด</label>
									<div class="input-group">
										<input type="text" class="form-control">
										<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="ชนิด"><i class="fa fa-search"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ยี่ห้อ</label>
									<div class="input-group">
										<input type="text" class="form-control">
										<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="ยี่ห้อ"><i class="fa fa-search"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>รุ่น</label>
									<div class="input-group">
										<input type="text" class="form-control">
										<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="รุ่น"><i class="fa fa-search"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>น้ำหนักต่อหน่วยเบิก</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ราคาต่อหน่วยเบิก</label>
									<div class="input-group">
										<span class="input-group-addon">฿</span> 
										<input type="text" class="form-control"> 
										<span class="input-group-addon">.00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">ประวัติล่าสุด</h3>
		
						<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
						</button>
						
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ผู้ขายล่าสุด : Apple Thailand</label><br>
									<label>ราคาต่อหน่วยล่าสุด : 45,000บาท</label><br>
									<label>จำนวนซื้อล่าสุด : 1ตัว</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-6">
					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">รูปสินค้า</h3>
			
							<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="col-xs-12 pull-center">
								<img src="http://placehold.it/400x300" alt="..." class="margin">
							</div>
						</div>
					</div>
					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">หน่วยสินค้า</h3>
			
							<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-5">
										<div class="form-group">
											<label>หน่วยย่อย</label>
											<div class="input-group">
												<input type="text" class="form-control">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<div class="col-xs-5">
										<div class="form-group">
											<label>จำนวน</label>
											<div class="input-group">
												<input type="text" class="form-control" value="1" style="text-align: right;">
											</div>
										</div>
									</div>
									<div class="col-xs-2">
										<div class="form-group">
											<label>เบิก</label>
											<div class="input-group">
												<input type="checkbox">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-5">
										<div class="form-group">
											<label>หน่วย</label>
											<div class="input-group">
												<input type="text" class="form-control">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<div class="col-xs-5">
										<div class="form-group">
											<label>จำนวน</label>
											<div class="input-group">
												<input type="text" class="form-control" style="text-align: right;">
											</div>
										</div>
									</div>
									<div class="col-xs-2">
										<div class="form-group">
											<label>เบิก</label>
											<div class="input-group">
												<input type="checkbox">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-5">
										<div class="form-group">
											<label>หน่วย</label>
											<div class="input-group">
												<input type="text" class="form-control">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<div class="col-xs-5">
										<div class="form-group">
											<label>จำนวน</label>
											<div class="input-group">
												<input type="text" class="form-control" style="text-align: right;">
											</div>
										</div>
									</div>
									<div class="col-xs-2">
										<div class="form-group">
											<label>เบิก</label>
											<div class="input-group">
												<input type="checkbox">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-5">
										<div class="form-group">
											<label>หน่วย</label>
											<div class="input-group">
												<input type="text" class="form-control">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<div class="col-xs-5">
										<div class="form-group">
											<label>จำนวน</label>
											<div class="input-group">
												<input type="text" class="form-control" style="text-align: right;">
											</div>
										</div>
									</div>
									<div class="col-xs-2">
										<div class="form-group">
											<label>เบิก</label>
											<div class="input-group">
												<input type="checkbox">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-5">
										<div class="form-group">
											<label>หน่วย</label>
											<div class="input-group">
												<input type="text" class="form-control">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<div class="col-xs-5">
										<div class="form-group">
											<label>จำนวน</label>
											<div class="input-group">
												<input type="text" class="form-control" style="text-align: right;">
											</div>
										</div>
									</div>
									<div class="col-xs-2">
										<div class="form-group">
											<label>เบิก</label>
											<div class="input-group">
												<input type="checkbox">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">ค่าเฉลี่ย</h3>
			
							<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<label>ราคาเฉลี่ยตามผู้ขาย : 47,000บาท</label><br>
										<label>ราคาต่ำสุดตามผู้ขาย : 45,000บาท</label><br><br>
										<label>ราคาเฉลี่ยตาม PO : 45,000บาท</label><br>
										<label>ราคาต่ำสุดตาม PO : 45,000บาท</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<c:choose>
						<c:when test="${view != 'info'}">
							<div class="box-footer">
								<a href="list_product.htm" class="btn btn-default">Cancel</a>
								<button type="submit" class="btn btn-info pull-right">Save</button>
							</div>
						</c:when>
					</c:choose>
				</div>
			</div>

		</div>


		
		
		<!-- PRODUCT POPUP -->
		<div id="popup_referance" class="modal fade" role="dialog">
			<div class="modal-dialog" style="width: 70%">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"><label id="popup_referance_title" style="font-size: 14px;"></label></h4>
					</div>
					<div class="modal-body">
						<table id="popup_referance_table" class="table table-hover table-bordered" style="font-size: 12px;">
							<thead>
								<tr>
									<td  colspan="7">
									<table style="width: 100%">
										<tr>
											<td align="right" valign="middle" style="font-size: 16px;padding: 5px;">
												<div class="input-group">
													<input id="popup_referance_txt_search" type="text" class="form-control">
													<span class="input-group-addon"><i class="fa fa-search"></i></span>
												</div>
											</td>
										</tr>
									</table>
									</td>
								</tr>
								<tr class="bg-light-blue disabled ">
									<th class="text-center">รหัส</th>
									<th class="text-center">ชื่อ</th>
								</tr>
							</thead>
							<tbody id="popup_referance_body">

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>


	</section>
	
	<script type="text/javascript">

		$(document).ready(function() {
			
			$('[data-tnk]').on("click", function() {
				var val = $(this).attr("data-tnk");
				$('#popup_referance_title').html(val);
				
				var list_referance;
				if(val == "ประเภท"){
					list_referance = ${list_product_type};
				}
				if(val == "กลุ่ม"){
					list_referance = ${list_product_group};
				}
				if(val == "ชนิด"){
					list_referance = ${list_product_kind};
				}
				if(val == "ยี่ห้อ"){
					list_referance = ${list_brand};
				}
				if(val == "รุ่น"){
					list_referance = ${list_product_model};
				}
				if(val == "หน่วยบรรจุ"){
					list_referance = ${list_packing_unit};
				}
				
				$('#popup_referance_body').html("<tr></tr>");
				$.each(list_referance, function(index, detail) {
					add_popup_referance(detail.id, detail.code, detail.name);
				});
			});
			

			$("#popup_referance_txt_search").on("keyup", function() {
				var value = $(this).val().toLowerCase();
				$("#popup_referance_body tr").filter(function() {
					$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				});
			});

		});


		function add_popup_referance(id, code, name){
			var html = '';
			html += '<tr id="">';
			html += '<td class="text-center"><label>'+code+'</label></td>';
			html += '<td class="text-left"><label>'+name+'</label></td>';
			html += '</tr>';

			$('#popup_referance_body tr:last').after(html);
		}

	</script>

<%
if(!"info".equals(view)){
%>
	<%@ include file="../footer.jsp" %>
<%
}
%> 
