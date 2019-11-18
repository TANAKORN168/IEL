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
      <h1><u>ใบรับสินค้า/บริการ</u></h1>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header">
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="col-xs-3" style="padding-left: 10px;">
									<label class="col-sm-5 control-label tnk-title">เลขที่เอกสาร</label>
					
									<div class="col-sm-7">
										<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">RCAC2019110001</label>
									</div>
								</div>
								<div class="col-xs-4">

								</div>
								<div class="col-xs-5">
									<div class="form-group">
										<label class="col-sm-4 control-label tnk-title">เลขที่ใบส่ง</label>
						
										<div class="col-sm-8">
											<div class="input-group" style="width: 100%;">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="col-xs-3" style="padding-left: 10px;">
									<label class="col-sm-5 control-label tnk-title">วันที่เอกสาร</label>
					
									<div class="col-sm-7">
										<label class="col-sm-4 control-label" style="width: 100%;padding-top: 4%">20/11/2562</label>
									</div>
								</div>
								<div class="col-xs-4">

								</div>
								<div class="col-xs-5" >
									<div class="form-group">
										<label class="col-sm-4 control-label tnk-title">วันที่รับ</label>
						
										<div class="col-sm-8">
											<div class="input-group" style="width: 100%;">
												<input type="text" class="form-control" style="padding: 0px 5px;" value="25/11/2562">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">PO</h3>
		
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
										<td style="width:10%;text-align: right;vertical-align: top;">รหัส</td>
										<td>
											<div class="input-group" style="padding-left: 15px;padding-bottom: 15px;">
												<input type="text" class="form-control" value="POAC2019110001">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_purchase_order" data-backdrop="static" data-keyboard="false"><i class="fa fa-search"></i></a>
											</div>
										</td>
										<td style="width:10%;text-align: right;"></td>
										<td>
											
										</td>
										<td style="width:10%;text-align: right;"></td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;"></label>
										</td>
									</tr>
									<tr>
										<td style="width:10%;text-align: right;">ผู้ขาย</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">บริษัท Apple Thailand</label>
										</td>
										<td style="width:10%;text-align: right;">ราคา</td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;">262,150.00</label>
										</td>
										<td style="width:10%;text-align: right;"></td>
										<td>
											<label class="col-sm-4 control-label" style="width: 100%;"></label>
										</td>
									</tr>
									<tr>
										<td style="width:15%;text-align: right;">
											ระดับความพอใจ
										</td>
										<td colspan="5">
											<div class="input-group" style="padding-left: 15px;font-size: 30px;">
												<span class="fa fa-star" id="star1" onclick="add(this,1)" style="color:gray;cursor: pointer;"></span>
												<span class="fa fa-star" id="star2" onclick="add(this,2)" style="color:gray;cursor: pointer;"></span>
												<span class="fa fa-star checked" id="star3" onclick="add(this,3)" style="color:gray;cursor: pointer;"></span>
												<span class="fa fa-star" id="star4" onclick="add(this,4)" style="color:gray;cursor: pointer;"></span>
												<span class="fa fa-star" id="star5" onclick="add(this,5)" style="color:gray;cursor: pointer;"></span>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
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
				
				<c:choose>
					<c:when test="${view != 'info'}">
						<div class="box-footer">
							<a href="list_receive_order.htm" class="btn btn-default">Cancel</a>
							<button type="submit" class="btn btn-info pull-right">Save</button>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
		
		
		<!-- PO POPUP -->
		<div id="popup_purchase_order" class="modal fade" role="dialog">
			<div class="modal-dialog" style="width: 80%">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">PO</label></h4>
					</div>
					<div class="modal-body">
						<table id="popup_purchase_order_table" class="table table-hover table-bordered" style="font-size: 12px;">
							<thead>
								<tr>
									<td  colspan="6">
									<table style="width: 100%">
										<tr>
											<td align="right" valign="middle" style="font-size: 16px;padding: 5px;">
												<div class="input-group">
													<input id="popup_purchase_order_txt_search" type="text" class="form-control">
													<span class="input-group-addon"><i class="fa fa-search"></i></span>
												</div>
											</td>
										</tr>
									</table>
									</td>
								</tr>
								<tr class="bg-light-blue disabled ">
									<th class="text-center" style="width: 15%">เลขที่เอกสาร</th>
									<th class="text-center" style="width: 15%">วันที่เอกสาร</th>
									<th class="text-center" style="width: 15%">เลขที่ PR</th>
									<th class="text-center" style="width: 20%">ผู้ขาย</th>
									<th class="text-center" style="width: 15%">ราคา</th>
									<th style="width: 20%"></th>
								</tr>
							</thead>
							<tbody id="popup_purchase_order_body">
								<tr></tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
	</section>
	
	<script type="text/javascript">

		$(document).ready(function() {

			var list_product = ${list_purchase_order_detail};
			$.each(list_product, function(index, detail) {
				add_product(detail.id, detail.code, detail.detail, detail.discription, detail.send_date, detail.amount, detail.unit, detail.price_per_unit, detail.discount, detail.price);
			});

			var list_po = ${list_purchase_order};
			$.each(list_po, function(index, detail) {
				add_popup_purchase_order(detail.code, detail.doc_date, detail.pr_code, detail.vendor, detail.price);
			});

		});

		function add(ths,sno){
			for (var i = 1; i <= 5; i++) {
				var cur = document.getElementById("star" + i).style.color = "gray";
			}

			for (var i = 1; i <= sno; i++) {
				var cur = document.getElementById("star" + i).style.color = "#eed700";
			}
		}

		var loop_product = 1;
		function add_product(id, code, detail, discription, send_date, amount, unit, price_per_unit, discount, price) {
			var html = '';
			var row_id_del = "'product_row_" + loop_product + "'";
			var row_id = "product_row_" + loop_product;
			html += '<tr id="'+row_id+'">';

			html += '<input name="product_id_'+loop_product+'" type="hidden"  value="'+id+'">';
			
			html += '<td class="text-center"><input name="product_code_'+loop_product+'" type="hidden" value="'+code+'">'+code+'</td>';
			html += '<td class="text-left"><input name="product_detail_'+loop_product+'" type="hidden" value="'+detail+'">'+detail+'</td>';
			html += '<td class="text-left"><input name="product_send_date_'+loop_product+'" type="hidden" value="'+send_date+'">25/11/2562</td>';
			html += '<td class="text-left"><input name="product_amount_'+loop_product+'" type="text" value="'+amount+'" style="text-align: right;"></td>';
			html += '<td class="text-left"><input name="product_unit_'+loop_product+'" type="hidden" value="'+unit+'">'+unit+'</td>';
			html += '<td class="text-right"><input name="product_price_per_unit_'+loop_product+'" type="hidden" value="'+price_per_unit+'">'+price_per_unit+'</td>';
			html += '<td class="text-right"><input name="product_discount_'+loop_product+'" type="hidden" value="'+discount+'">'+discount+'</td>';
			html += '<td class="text-right"><input name="product_price_'+loop_product+'" type="hidden" value="'+price+'">'+price+'</td>';
			html += '</tr>';

			$('#product_last_row').val(loop_product);
			loop_product++;
			
			$('#product_table tr:last').after(html);
		}

		function add_popup_purchase_order(code, doc_date, pr_code, vendor, price){
			var html = '';
			html += '<tr id="">';
			html += '<td class="text-center"><label>'+code+'</label></td>';
			html += '<td class="text-center"><label>'+doc_date+'</label></td>';
			html += '<td class="text-center"><label>'+pr_code+'</label></td>';
			html += '<td class="text-left"><label>'+vendor+'</label></td>';
			html += '<td class="text-right"><label>'+price+'</label></td>';
			html += '<td class="text-left"><a class="btn btn-info" style="height: 33px;">เลือก</a></td>';
			html += '</tr>';

			$('#popup_purchase_order_body tr:last').after(html);
		}
		
	</script>

<%
if(!"info".equals(view)){
%>
	<%@ include file="../footer.jsp" %>
<%
}
%> 
