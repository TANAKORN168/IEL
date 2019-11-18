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
      <h1><u>ใบ PR</u> (${type_name})</h1>
	</section>
	
	<input id="select_id" type="hidden"  value="">
	<input id="select_level" type="hidden"  value="">
	<input id="select_title" type="hidden"  value="">
	<input id="select_users_id" type="hidden"  value="">
	<input id="select_status_code" type="hidden"  value="">
	<input id="last_approve" name="last_approve" type="hidden"  value="1">

	<a id="unit_click" name="unit_click" href="#" data-toggle="modal" data-target="#popup_referance" data-tnk="หน่วยบรรจุ"></a>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header">
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="col-xs-3" style="padding-left: 10px;">
									<b>เลขที่เอกสาร : </b>PRAC2019110001
								</div>
								<div class="col-xs-4">

								</div>
								<div class="col-xs-5">
									<div class="form-group">
										<label class="col-sm-4 control-label tnk-title">คลัง</label>
						
										<div class="col-sm-8">
											<div class="input-group">
												<input type="text" class="form-control">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="คลัง"><i class="fa fa-search"></i></a>
											</div>
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
									<div class="form-group">
										<label class="col-sm-4 control-label tnk-title">วันที่ต้องการ</label>
						
										<div class="col-sm-8">
											<div class="input-group" style="width: 100%;">
												<input type="text" class="form-control" style="padding: 0px 5px;" value="25/11/2562">
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-5" >
									<c:choose>
										<c:when test="${type_name == 'ทรัพย์สิน'}">
											<div class="form-group">
												<label class="col-sm-4 control-label tnk-title">ผู้ครอบรอง</label>
								
												<div class="col-sm-8">
													<div class="input-group" style="width: 100%;">
														<input type="text" class="form-control" value="วิทยา เกิดสินธ์ชัย">
													</div>
												</div>
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">บริษัท</label>
						
										<div class="col-sm-10">
											<div class="input-group">
												<input type="text" class="form-control" value="บริษัท อินเตอร์เอ็กซ์เพรส โลจิสติกส์ จำกัด">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="บริษัท"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">สาย</label>
						
										<div class="col-sm-10">
											<div class="input-group">
												<input type="text" class="form-control" value="สายงานพัฒนาองค์กรเชิงกลยุทธ์">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="สาย"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">ฝ่าย</label>
						
										<div class="col-sm-10">
											<div class="input-group">
												<input type="text" class="form-control" value="ฝ่ายเทคโนโลยีและสารสนเทศ">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="ฝ่าย"><i class="fa fa-search"></i></a>
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
										<label class="col-sm-2 control-label tnk-title">แผนก</label>
						
										<div class="col-sm-10">
											<div class="input-group">
												<input type="text" class="form-control" value="พัฒนาระบบสารสนเทศ">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="แผนก"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="form-group">
										<label class="col-sm-2 control-label tnk-title">หน่วย</label>
						
										<div class="col-sm-10">
											<div class="input-group">
												<input type="text" class="form-control" value="ซอฟต์แวร์">
												<a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วย"><i class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-4">

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12" style="padding: 0px;">
								<div class="form-group">
										<label class="col-sm-1 control-label tnk-title">หมายเหตุ</label>
						
										<div class="col-sm-11">
											<div class="input-group" style="width: 100%">
												<input type="text" class="form-control" >
											</div>
										</div>
									</div>
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
								<tr>
									<td colspan="7" align="right">
										<div class="input-group input-group-sm hidden-xs" style="width: 300px;">
											<input type="text" id="txt_search" name="txt_search" class="form-control pull-right" placeholder="Search" style="height: 33px;">
											<div class="input-group-btn">
												<button type="submit" class="btn btn-default" style="height: 33px;"><i class="fa fa-search"></i></button>
											</div>
										</div>
									</td>
								</tr>
								<tr class="bg-light-blue disabled ">
									<th class="text-center" style="width: 10%">รหัสสินค้า</th>
									<th class="text-center" style="width: 30%">รายละเอียดสินค้า</th>
									<th class="text-center" style="width: 15%">ราคา/หน่วย</th>
									<th class="text-center" style="width: 15%;">จำนวน</th>
									<th class="text-center" style="width: 15%;">หน่วย</th>
									<th class="text-center" style="width: 15%;">จำนวนเงิน</th>
								</tr>
							</thead>
							<tbody id="body_product">
								<tr></tr>
							</tbody>
						</table>
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
							<a href="list_purchase_requisition.htm" class="btn btn-default">Cancel</a>
							<button type="submit" class="btn btn-info pull-right">Save</button>
						</div>
					</c:when>
				</c:choose>
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
				if(val == "คลัง"){
					list_referance = ${list_warehouse};
				}
				if(val == "บริษัท"){
					list_referance = ${list_company};
				}
				if(val == "สาย"){
					list_referance = ${list_work_line};
				}
				if(val == "ฝ่าย"){
					list_referance = ${list_department};
				}
				if(val == "แผนก"){
					list_referance = ${list_section};
				}
				if(val == "หน่วย"){
					list_referance = ${list_organization};
				}
				if(val == "หน่วยบรรจุ"){
					list_referance = ${list_packing_unit};
				}
				
				$('#popup_referance_body').html("<tr></tr>");
				$.each(list_referance, function(index, detail) {
					add_popup_referance(detail.id, detail.code, detail.name);
				});
			});

			var list_product = ${list_product};
			$.each(list_product, function(index, detail) {
				add_product(detail.id, detail.code, detail.full_name, detail.full_discription, 0, "", detail.price);
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

			$("#popup_referance_txt_search").on("keyup", function() {
				var value = $(this).val().toLowerCase();
				$("#popup_referance_body tr").filter(function() {
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
		function add_product(id, code, name, discription, amount, unit, price) {
			var html = '';
			var row_id_del = "'product_row_" + loop_product + "'";
			var row_id = "product_row_" + loop_product;
			html += '<tr id="'+row_id+'">';

			html += '<input name="product_id_'+loop_product+'" type="hidden"  value="'+id+'">';
			
			html += '<td class="text-center"><input name="product_code_'+loop_product+'" type="hidden" value="'+code+'">'+code+'</td>';
			html += '<td class="text-left"><input name="product_detail_'+loop_product+'" type="hidden" value="'+ name +' ' + discription +'">'+ name +' ' + discription +'</td>';
			html += '<td class="text-right"><input name="product_price_'+loop_product+'" type="hidden" value="'+price+'">'+currencyFormat(price)+'</td>';
			html += '<td class="text-left"><input name="product_amount_'+loop_product+'" type="text" class="form-control" style="height: 33px;text-align: right;padding: 5px;" value="10"></td>';
			html += '<td class="text-left"><div class="input-group"><input type="text" class="form-control" value="ชิ้น"><a href="#" class="input-group-addon" onclick="unit_click()"><i class="fa fa-search"></i></a></div></td>';
			html += '<td class="text-right"><input name="product_total_'+loop_product+'" type="hidden" value="">'+currencyFormat(490000)+'</td>';

			html += '</tr>';

			$('#product_last_row').val(loop_product);
			loop_product++;
			
			$('#product_table tr:last').after(html);
		}
		
		function currencyFormat(num) {
			return num.toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
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

		function unit_click(){
			document.getElementById("unit_click").click();
		}

	</script>

<%
if(!"info".equals(view)){
%>
	<%@ include file="../footer.jsp" %>
<%
}
%> 
