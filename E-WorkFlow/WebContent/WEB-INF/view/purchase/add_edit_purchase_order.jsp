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
	padding: 7px;
}

.tnk-select{
	padding: 0px;
}

[class="col-xs-3"],[class="col-xs-9"],[class="col-sm-9"],[class="col-xs-4"]{
	padding: 0px;
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
      <h1><u>ใบ PO</u></h1>
	</section>
	
	<input id="select_id" type="hidden"  value="">
	<input id="select_level" type="hidden"  value="">
	<input id="select_title" type="hidden"  value="">
	<input id="select_users_id" type="hidden"  value="">
	<input id="select_status_code" type="hidden"  value="">
	<input id="last_approve" name="last_approve" type="hidden"  value="1">

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header">
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="col-xs-3" style="padding-left: 10px;">
									<b>เลขที่เอกสาร : </b>POAC2019110001
								</div>
								<div class="col-xs-4">

								</div>
								<div class="col-xs-5">
									<label class="col-sm-4 control-label tnk-title">ผู้ครอบรอง</label>
							
									<div class="col-sm-8">
										<div class="input-group" style="width: 100%;">
											<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">วิทยา เกิดสินธ์ชัย</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="col-xs-3" style="padding-left: 10px;">
									<b>วันที่เอกสาร : </b>11/11/2562
								</div>
								<div class="col-xs-4">

								</div>
								<div class="col-xs-5" >
									<div class="form-group">
										<label class="col-sm-4 control-label tnk-title">วันที่ต้องการ</label>
						
										<div class="col-sm-8">
											<div class="input-group" style="width: 100%;">
												<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">25/11/2562</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">บริษัท</label>
						
										<div class="col-sm-10">
											<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">บริษัท อินเตอร์เอ็กซ์เพรส โลจิสติกส์ จำกัด</label>
										</div>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">สาย</label>
						
										<div class="col-sm-10">
											<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">สายงานพัฒนาองค์กรเชิงกลยุทธ์</label>
										</div>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">ฝ่าย</label>
						
										<div class="col-sm-10">
											<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">ฝ่ายเทคโนโลยีและสารสนเทศ</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">แผนก</label>
						
										<div class="col-sm-10">
											<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">พัฒนาระบบสารสนเทศ</label>
										</div>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">หน่วย</label>
						
										<div class="col-sm-10">
											<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">ซอฟต์แวร์</label>
										</div>
									</div>
								</div>
								<div class="col-xs-4">
										<div class="form-group">
											<div class="col-sm-2">
												
											</div>
							
											<div class="col-sm-10">
												<input type="checkbox"><label class="tnk-title">จัดส่งที่ฝ่ายจัดซื้อสำนักงานใหญ่</label>
											</div>
										</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">ผู้ขาย</h3>
		
						<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
						</button>
						
						</div>
					</div>
					<div class="box-body" style="padding: 0px;">
					 	<div class="row">
							<div class="col-xs-12" style="padding: 5px 15px;">
								<table style="width: 100%;">
									<tr>
										<td style="width:10%;text-align: right;">รหัส</td>
										<td>
											<div class="input-group" style="padding-left: 15px;">
												<input type="text" class="form-control" value="V001">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_vendor" data-backdrop="static" data-keyboard="false" data-tnk="คลัง"><i class="fa fa-search"></i></a>
											</div>
										</td>
										<td style="width:10%;text-align: right;">ชื่อ</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">บริษัท Apple Thailand</label>
										</td>
										<td style="width:10%;text-align: right;">โทร</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">02-234-559</label>
										</td>
									</tr>
									<tr>
										<td style="width:10%;text-align: right;">ที่อยู่</td>
										<td colspan="5">
											<label class="col-sm-4 control-label" style="width: 100%;padding: 7px 0px;padding-left: 15px;">ชั้น 44 ห้องเลขที่ HH4401-6อาคารดิออฟฟิศเศสแอทเซ็นทรัลเวิลด์999/9 ถนนพระราม 1 เขตปทุมวัน กรุงเทพ 10330</label>
										</td>
									</tr>
									<tr>
										<td style="width:10%;text-align: right;">ผู้ติดต่อ</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">เจตธิดา หล่อลักษณ์</label>
										</td>
										<td style="width:10%;text-align: right;">ตำแหน่ง</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">ผู้จัดการฝ่ายขาย</label>
										</td>
										<td style="width:10%;text-align: right;">โทร</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">098-9769444</label>
										</td>
									</tr>
									<tr>
										<td style="width:10%;text-align: right;">Office Hour</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">จ-ศ</label>
										</td>
										<td style="width:10%;text-align: right;">จำนวนวันเครดิต</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">30 วัน</label>
										</td>
										<td style="width:10%;text-align: right;">การชำระเงิน</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">เงินเชื่อ</label>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">PR</h3>
		
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
						
						</div>
					</div>
					<div class="box-body" style="padding: 0px;">
						<div>
							<a href="#" class="btn btn-info" data-toggle="modal" data-target="#popup_purchase_requisition"><i class="fa fa-plus"></i> เลือก</a>
						</div>
						<table id="purchase_requisition_table" class="table table-hover table-bordered" style="font-size: 12px;">
							<thead>
								<tr class="bg-light-blue disabled ">
									<th class="text-center">เลขที่เอกสาร</th>
									<th class="text-center">วันที่เอกสาร</th>
									<th class="text-center">รหัสสินค้า</th>
									<th class="text-center">รายละเอียดสินค้า</th>
									<th class="text-center">จำนวน</th>
									<th class="text-center">หน่วย</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="purchase_requisition_body">
								<tr></tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">รายการ</h3>
		
						<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
						</button>
						
						</div>
					</div>
					<div class="box-body" style="padding: 0px;">
						<table id="product_table" class="table table-hover table-bordered" style="font-size: 12px;">
							<thead>
								<tr class="bg-light-blue disabled ">
									<th class="text-center" style="width: 10%;">รหัสสินค้า</th>
									<th class="text-center" style="width: 30%;">รายละเอียดสินค้า</th>
									<th class="text-center" style="width: 10%;">วันนัด</th>
									<th class="text-center" style="width: 10%;">จำนวน</th>
									<th class="text-center" style="width: 10%;">หน่วย</th>
									<th class="text-center" style="width: 10%;">ราคา/หน่วย</th>
									<th class="text-center" style="width: 10%;">ส่วนลด</th>
									<th class="text-center" style="width: 10%;">จำนวนเงิน</th>
								</tr>
							</thead>
							<tbody id="body_product">
								<tr></tr>
							</tbody>
						</table>
						<br>
						<table style="width: 100%;" border="0">
							<tr>
								<td style="width: 70%;padding-left: 10px;" colspan="7">
									<div class="form-group">
										<label>หมายเหตุ</label>
										<textarea class="form-control" rows="3"></textarea>
									</div>
								</td>
								<td style="width: 20%;text-align: right;vertical-align: top;">
									<label>รวมเงิน</label><br>
									<label>ส่วนลด</label><br>
									<label>เงินหลังหักส่วนลด</label><br>
									<label>ภาษีมูลค่าเพิ่ม 7%</label><br>
									<label>จำนวนเงินทั้งสิ้น</label>
								</td>
								<td style="width: 10%;text-align: right;vertical-align: top;padding-right: 10px;">
									<label>245,000.00</label><br>
									<label>0.00</label><br>
									<label>245,000.00</label><br>
									<label>17,150.00</label><br>
									<label>262,150.00</label>
								</td>
							</tr>
						</table>
						<br>
					</div>
				</div>
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">ข้อมูลการอนุมัติ</h3>
					</div>
					<div class="box-body">
						<div class="table-responsive">
							<table style="width: 100%">
								<tr id="list_approve">

								</tr>
							</table>
						</div>
					</div>
				</div>
				<c:choose>
					<c:when test="${view != 'info'}">
						<div class="box-footer">
							<a href="list_purchase_order.htm" class="btn btn-default">Cancel</a>
							<button type="submit" class="btn btn-info pull-right">Save</button>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
		
		
		<!-- VENDOR POPUP -->
		<div id="popup_vendor" class="modal fade" role="dialog">
			<div class="modal-dialog" style="width: 70%">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">ผู้ขาย</label></h4>
					</div>
					<div class="modal-body">
						<table id="popup_vendor_table" class="table table-hover table-bordered" style="font-size: 12px;">
							<thead>
								<tr>
									<td  colspan="9">
									<table style="width: 100%">
										<tr>
											<td align="right" valign="middle" style="font-size: 16px;padding: 5px;">
												<div class="input-group">
													<input id="popup_vendor_txt_search" type="text" class="form-control">
													<span class="input-group-addon"><i class="fa fa-search"></i></span>
												</div>
											</td>
										</tr>
									</table>
									</td>
								</tr>
								<tr class="bg-light-blue disabled ">
									<th class="text-center">รหัสผู้ขาย</th>
									<th class="text-center">ชื่อผู้ขาย</th>
									<th class="text-center">ประเภทผู้ขาย</th>
									<th class="text-center">Office Hour</th>
									<th class="text-center">วงเงินการค้า</th>
									<th class="text-center">จำนวนวันเครดิต</th>
									<th class="text-center">การชำระเงิน</th>
									<th class="text-center">ส่วนลด</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="popup_vendor_body">
								<tr></tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- PR POPUP -->
		<div id="popup_purchase_requisition" class="modal fade" role="dialog">
			<div class="modal-dialog" style="width: 80%">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">PR</label></h4>
					</div>
					<div class="modal-body">
						<table id="popup_purchase_requisition_table" class="table table-hover table-bordered" style="font-size: 12px;">
							<thead>
								<tr>
									<td  colspan="9">
									<table style="width: 100%">
										<tr>
											<td align="right" valign="middle" style="font-size: 16px;padding: 5px;">
												<div class="input-group">
													<input id="popup_purchase_requisition_txt_search" type="text" class="form-control">
													<span class="input-group-addon"><i class="fa fa-search"></i></span>
												</div>
											</td>
										</tr>
									</table>
									</td>
								</tr>
								<tr class="bg-light-blue disabled ">
									<th class="text-center">เลขที่เอกสาร</th>
									<th class="text-center">วันที่เอกสาร</th>
									<th class="text-center">รหัสสินค้า</th>
									<th class="text-center">รายละเอียดสินค้า</th>
									<th class="text-center">จำนวน</th>
									<th class="text-center">หน่วย</th>
									<th class="text-center">จำนวนที่เลือก</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="popup_purchase_requisition_body">
								<tr></tr>
							</tbody>
						</table>
						<div class="modal-footer">
							<a class="btn btn-info" style="height: 33px;">ตกลง</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		
		<!-- POPUP -->
		<div id="popup_reject" class="modal fade" role="dialog">
			<div class="modal-dialog">
			<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">รายละเอียด</h4>
					</div>
					<div class="modal-body">
						<table style="width: 100%;">
							<tr>
								<td>
									<div class="form-group">
										<label>เหตุผลในการตีกลับ</label>
										<textarea class="form-control" rows="3"></textarea>
									</div>
								</td>
							</tr>
							<tr>
								<td style="text-align: right;">
									<a class="btn btn-info" style="height: 33px;">ตกลง</a>
								</td>
							</tr>
						</table>
					</div>
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
	  
		<!-- POPUP -->
		<div id="popup_approve" class="modal fade" role="dialog">
			<div class="modal-dialog">
			<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">รายชื่อ</h4>
					</div>
					<div class="modal-body">
						<table style="width: 100%;">
							<tr>
								<td>
									<input type="text" id="txt_approve_search" name="txt_approve_search" class="form-control" placeholder="Search" style="height: 33px; width: 80%;">
								</td>
							</tr>
						</table>
						<table class="table table-striped table-bordered table-hover" style="margin-top: 5px;">
							<thead>
								<tr>
									<th width="10%">#</th>
									<th width="90%">ชื่อ</th>
								</tr>
							</thead>
							<tbody id="list_popup_approve">
							
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
				
				$('#popup_referance_body').html("<tr></tr>");
				$.each(list_referance, function(index, detail) {
					add_popup_referance(detail.id, detail.code, detail.name);
				});
			});

			var list_product = ${list_purchase_order_detail};
			$.each(list_product, function(index, detail) {
				add_product(detail.id, detail.code, detail.detail, detail.discription, detail.send_date, detail.amount, detail.unit, detail.price_per_unit, detail.discount, detail.price);
			});

			var vendor_list = ${list_vendor};
			$.each(vendor_list, function(index, detail) {
				add_popup_vendor(detail.id, detail.code, detail.full_name, detail.vendor_type_name, detail.office_hour, detail.trade_limit, detail.credit_days, detail.payment, detail.full_discount);
			});
			
			var purchase_requisition_detail_list = ${list_purchase_requisition_detail};
			$.each(purchase_requisition_detail_list, function(index, detail) {
				add_popup_purchase_requisition(detail.code, detail.doc_date, detail.product_code, detail.product_name, detail.product_discription, detail.amount, detail.unit);
				add_purchase_requisition(detail.code, detail.doc_date, detail.product_code, detail.product_name, detail.product_discription, detail.amount, detail.unit);
			});
			
			var list = ${list_status_movement};
			$.each(list, function( index, status_movement ) {
				if(status_movement.must_approve){
					
					var sig ="assets/img/sigNull.png";
					var _date = "";
					if(status_movement.stamp){
						sig = status_movement.users_url_sig
						_date= status_movement.date_time
					}
					
					set_approve(null, status_movement.status_name, status_movement.users_name, status_movement.users_position, 
							status_movement.users_url_pic, sig, _date, status_movement.level, status_movement.users_id, status_movement.status_code);
				}
			});

			$("#txt_search").on("keyup", function() {
				var value = $(this).val().toLowerCase();
				$("#body_product tr").filter(function() {
					$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				});
			});

			$("#txt_approve_search").on("keyup", function() {
				var value = $(this).val().toLowerCase();
				$("#list_popup_approve tr").filter(function() {
					$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				});
			});

			$("#popup_vendor_txt_search").on("keyup", function() {
				var value = $(this).val().toLowerCase();
				$("#popup_vendor_body tr").filter(function() {
					$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				});
			});

			$("#popup_purchase_requisition_txt_search").on("keyup", function() {
				var value = $(this).val().toLowerCase();
				$("#popup_purchase_requisition_body tr").filter(function() {
					$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				});
			});

			$('#popup_approve').on('show.bs.modal', function () {
				var objFormJSP = new Object();
				var level = $("#select_level").val();
				objFormJSP.level = level;
				$.ajax({
					url: "${pageContext.request.contextPath}/get_list_approve.htm",
					type: 'POST',
					dataType: 'json',
					data: JSON.stringify(objFormJSP),
					contentType: 'application/json',
					mimeType: 'application/json',
					
					success: function (data) {
						$("#list_popup_approve tr").remove();
						var loop = 1;
						$.each(data, function (index, users) {
							var str = '"'+users.name+'","'+users.position+'","'+users.url_img+'","'+users.id+'"';
							$("#list_popup_approve").append($('<tr/>')
														.append($('<td/>').html("<span>"+loop+".</span>"))
														.append($('<td/>').html("<span onclick='on_select_approve("+str+")' style='cursor: pointer;'>"+users.name+"</span>"))
														);
							
							loop++;
						});
					},
					error:function(data,status,er) {
						alert("error: "+data+" status: "+status+" er:"+er);
					}
				});
			});

		});


		var loop_product = 1;
		function add_product(id, code, detail, discription, send_date, amount, unit, price_per_unit, discount, price) {
			var html = '';
			var row_id_del = "'product_row_" + loop_product + "'";
			var row_id = "product_row_" + loop_product;
			html += '<tr id="'+row_id+'">';

			html += '<input name="product_id_'+loop_product+'" type="hidden"  value="'+id+'">';
			
			html += '<td class="text-center"><input name="product_code_'+loop_product+'" type="hidden" value="'+code+'">'+code+'</td>';
			html += '<td class="text-left"><input name="product_detail_'+loop_product+'" type="hidden" value="'+detail+'">'+detail+'</td>';
			html += '<td class="text-left"><input name="product_send_date_'+loop_product+'" type="text" value="25/11/2562"></td>';
			html += '<td class="text-left" style="text-align: right;"><input name="product_amount_'+loop_product+'" type="hidden" value="'+amount+'" style="text-align: right;">'+amount+'</td>';
			html += '<td class="text-left"><input name="product_unit_'+loop_product+'" type="hidden" value="'+unit+'">'+unit+'</td>';
			html += '<td class="text-right"><input name="product_price_per_unit_'+loop_product+'" type="hidden" value="'+price_per_unit+'">'+price_per_unit+'</td>';
			html += '<td class="text-right"><input name="product_discount_'+loop_product+'" type="hidden" value="'+discount+'">'+discount+'</td>';
			html += '<td class="text-right"><input name="product_price_'+loop_product+'" type="hidden" value="'+price+'">'+price+'</td>';
			html += '</tr>';

			$('#product_last_row').val(loop_product);
			loop_product++;
			
			$('#product_table tr:last').after(html);
		}
		
		function on_select_approve(name, position, url_pic, users_id){
			var select_id = document.getElementById("select_id").value;
			var select_level = document.getElementById("select_level").value;
			var select_title = document.getElementById("select_title").value;
			var select_status_code = document.getElementById("select_status_code").value;
			set_approve(select_id, select_title, name, position, url_pic, "assets/img/sigNull.png", "", select_level, users_id, select_status_code);
			$('#popup_approve').modal('hide');
		}
		
		function delete_approve(approve_id, title, level, status_code){
			set_approve(approve_id, title, null, null, null, null, null, level, 0, status_code);
		}
		
		function select(id, level, title, status_code){
			var select_id = document.getElementById("select_id");
			select_id.value = id;
			
			var select_level = document.getElementById("select_level");
			select_level.value = level;
			
			var select_title = document.getElementById("select_title");
			select_title.value = title
			
			var select_status_code = document.getElementById("select_status_code");
			select_status_code.value = status_code
		}

		var approve_loop = 1;
		function set_approve(id, title, name, position, url_pic, url_sig, date_time, level, users_id, status_code){
			var html = '';
			
			var approve_id = "";
			var users_id_approve = "";
			var status_code_approve = "";
			if(id == null){
				approve_id = "'approve_"+approve_loop+"'";
				users_id_approve = "users_id_approve_"+approve_loop+"";
				status_code_approve = "status_code_approve_"+approve_loop+"";
			}else{
				approve_id = "'"+id +"'";
				users_id_approve = "users_id_"+id+"";
				status_code_approve = "status_code_"+id+"";
			}
			
			var approve_title = "'"+title+"'";
			var approve_level = "'"+level+"'";
			var approve_users_id = ""+users_id+"";
			var approve_status_code = ""+status_code+"";
			var _approve_status_code = "'"+status_code+"'";
			var del_approve_id = "#"+id+"";
			
			if(id == null) html += '<td class="col-xs-4" id='+approve_id+'>';
			
			html += '<input id="'+users_id_approve+'" name="'+users_id_approve+'" type="hidden"  value="'+approve_users_id+'">';
			html += '<input id="'+status_code_approve+'" name="'+status_code_approve+'" type="hidden"  value="'+approve_status_code+'">';
			
			if(name == null){
				html += '<table style="width: 100%" class="table table-bordered" >';
				html += '<tr>';
				html += '<td align="center" colspan="2" style="font-size: 14px;font-weight: bold;">'+title+'</td>';
				html += '</tr>';
				html += '<tr>';
				html += '<td align="center" ><img src="${pageContext.request.contextPath}/assets/img/avatarNullAdd.png"  height="115px" width="150px"  data-toggle="modal" data-target="#popup_approve" style="cursor: pointer;" onclick="select('+approve_id+','+approve_level+','+approve_title+', '+_approve_status_code+')"><br><br></td>';									
				html += '</tr>';
				html += '</table>';
			}else{
				html += '<table style="width: 100%" class="table table-bordered" >';
				html += '<tr>';
				html += '<td align="center" colspan="2" style="font-size: 14px;font-weight: bold;">';
				html += title;
				
				if(approve_loop > 1){
					html += '&nbsp&nbsp<span class="badge bg-red detail" style="cursor: pointer;" onclick="delete_approve('+approve_id+', '+approve_title+', '+approve_level+', '+_approve_status_code+')">x</span>';
				}
				
				html += '</td>';
				html += '</tr>';
				html += '<tr>';
				html += '<td align="center" >';
				html += '<img src="'+url_pic+'"  height="100px" width="100px">';
				html += '</td>';
				html += '<td align="center" >';
				html += '<table>';
				html += '<tr><td align="center" ><img src="'+url_sig+'"  height="50px" width="100px"><br><br></td></tr>';
				html += '<tr><td align="center"  style="font-size: 12px;">'+name+'<br><b>ตำแหน่ง</b> '+position+'</td></tr>';
				html += '</table>';
				html += '</td>';
				html += '</tr>';
				html += '<tr>';
				html += '<td align="center" colspan="2" style="font-size: 14px;">วันที่เวลา : ' + date_time + '</td>';
				html += '</tr>';
				html += '</table>';
				if(id == null) html +='</td>';
			}
			
			$('#last_approve').val(approve_loop);
			approve_loop++;
			
			if(id == null){
				$('#list_approve').before(html);
			}else{
				$(del_approve_id).html(html);
			}
		}

		function add_popup_referance(id, code, name){
			var html = '';
			html += '<tr id="">';
			html += '<td class="text-center"><label>'+code+'</label></td>';
			html += '<td class="text-left"><label>'+name+'</label></td>';
			html += '</tr>';

			$('#popup_referance_body tr:last').after(html);
		}

		function add_popup_vendor(id, code, full_name, vendor_type_name, office_hour, trade_limit, credit_days, payment, full_discount){
			var html = '';
			html += '<tr id="">';
			html += '<td class="text-center"><label>'+code+'</label></td>';
			html += '<td class="text-left"><label>'+full_name+'</label></td>';
			html += '<td class="text-left"><label>'+vendor_type_name+'</label></td>';
			html += '<td class="text-left"><label>'+office_hour+'</label></td>';
			html += '<td class="text-left" style="text-align:right;"><label>'+currencyFormat(trade_limit)+'</label></td>';
			html += '<td class="text-left" style="text-align:right;"><label>'+credit_days+'</label></td>';
			html += '<td class="text-left"><label>'+payment+'</label></td>';
			html += '<td class="text-left"><label>'+full_discount+'</label></td>';
			html += '<td class="text-left"><a class="btn btn-info" style="height: 33px;">เลือก</a></td>';
			html += '</tr>';

			$('#popup_vendor_body tr:last').after(html);
		}
		
		function currencyFormat(num) {
			return num.toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
		}

		function add_popup_purchase_requisition(code, doc_date, product_code, product_name, product_discription, amount, unit){
			var html = '';
			html += '<tr id="">';
			html += '<td class="text-center"><label>'+code+'</label></td>';
			html += '<td class="text-left"><label>'+doc_date+'</label></td>';
			html += '<td class="text-left"><label>'+product_code+'</label></td>';
			html += '<td class="text-left"><label>'+product_discription+'</label></td>';
			html += '<td class="text-left"><label>'+amount+'</label></td>';
			html += '<td class="text-left"><label>'+unit+'</label></td>';
			html += '<td class="text-left"><input type="text" style="width:50px;text-align:right;"></td>';
			html += '<td><a class="btn btn-warning" style="height: 33px;" data-toggle="modal" data-target="#popup_reject">ตีกลับ</a></td>';
			html += '</tr>';

			$('#popup_purchase_requisition_body tr:last').after(html);
		}

		function add_purchase_requisition(code, doc_date, product_code, product_name, product_discription, amount, unit){
			var html = '';
			html += '<tr id="">';
			html += '<td class="text-center"><label>'+code+'</label></td>';
			html += '<td class="text-left"><label>'+doc_date+'</label></td>';
			html += '<td class="text-left"><label>'+product_code+'</label></td>';
			html += '<td class="text-left"><label>'+product_discription+'</label></td>';
			html += '<td class="text-left" style="text-align:right;"><label>5</label></td>';
			html += '<td class="text-left"><label>'+unit+'</label></td>';
			html += '<td class="text-left"><a class="btn btn-danger" style="height: 33px;">ลบ</a></td>;';
			html += '</tr>';

			$('#purchase_requisition_body tr:last').after(html);
		}

	</script>

<%
if(!"info".equals(view)){
%>
	<%@ include file="../footer.jsp" %>
<%
}
%> 
