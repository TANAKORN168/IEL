<%
String view = request.getParameter("view");
if("info".equals(view)){
%>
	<%@ include file="../../headerInclude.jsp" %>
<%
}else{
%>
	<%@ include file="../../header.jsp" %>
<%
}
%>  


<style>
.tnk-input-text{
	width: 250px;
	height: 25px;
	padding: 5px;
}

.fa-check {
  color: green;
}

.fa-close {
  color: red;
}

.gllpLatlonPicker	{ margin: 20px 0; }
.gllpMap	{ width: 400px; height: 250px; }
</style>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyDGJJL5XG-1sb43-opWLcHFgaCJB3RfTfo&libraries=places&callback=initMap"></script>
<script src="${pageContext.request.contextPath}/assets/components/jquery/dist/jquery-gmaps-latlon-picker.js"></script>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content" >
    
    <section class="content-header">
      <h1><u>ใบขอขึ้นทะเบียนผู้จำหน่าย</u></h1>
    </section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header">
						<div class="row">
							<div class="col-md-6">
								<b>รหัสขอขึ้นทะเบียน :</b> RVD201910010001
							</div>
							<div class="col-md-6" align="right">
								<b>รหัสผู้ขาย :</b> VD201910010001
							</div>
						</div>
						<br>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										ชื่อบริษัท
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
								<div class="col-md-6">
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										เลขประจำตัวผู้เสียภาษี
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
								<div class="col-md-6">
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-12">
									<div class="col-md-7" align="right" style="font-size: 16px;padding-right: 0px;">
					                      <input type="radio" name="type_sale" id="type_sale" value="producer" checked="checked">
					                      ผู้ผลิต&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                      <input type="radio" name="type_sale" id="type_sale" value="distributor">
					                      ตัวแทนจำหน่าย&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                      <input type="radio" name="type_sale" id="type_sale" value="other">
					                      อื่น ๆ ระบุ
									</div>
									<div class="col-md-5" style="font-size: 16px;padding-left: 5px;">
										 <input name="" value="" type="text" class="-control tnk-input-text" style="width: 365px;">
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-12">
									<div class="col-md-2"></div>
									<div class="col-md-10" align="left" style="font-size: 16px;padding-left: 30px;">
										<input type="checkbox"> จดทะเบียนภาษีมูลค่าเพิ่ม&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 <input type="checkbox"> ไม่จดทะเบียนภาษีมูลค่าเพิ่ม
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-12">
									<div class="col-md-2"></div>
									<div class="col-md-10" align="left" style="font-size: 16px;padding-left: 30px;">
										<input type="checkbox"> ภาษีมูลค่าเพิ่มแยกนอก (Exciusive Vat)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 <input type="checkbox"> ภาษีมูลค่าเพิ่มรวมใน (Inclusive Vat)
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										วันที่จดทะเบียน
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
						                <div class="input-group date">
						                  <div class="input-group-addon" style="padding-top: 0px;padding-bottom: 0px;">
						                    <i class="fa fa-calendar"></i>
						                  </div>
						                  <input type="text" class="form-control" id="datepicker" style="width: 213px;height: 25px;">
						                </div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										ทุนจดทะเบียน
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										จำนวนพนักงาน
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										จำนวนเครื่องจักร
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
						                  <input type="checkbox"> ยินยอมให้เข้า Visit site
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
                      					
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										ระบบการจัดส่ง
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
						                  <select class="form-control" style="padding: 0px;width: 250px;height: 25px;">
						                    <option>มีขนส่งเอง</option>
						                    <option>ใช้ขนส่งสาธารณะ</option>
						                  </select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										ระยะเวลาในการจัดส่ง
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
                      					 <input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										Job Reference
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
						                  <input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
                      					 
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										Credit Line
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										Credit Term
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-12">
									<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 70px;" >
										เงื่อนไขชำระเงิน
										<input type="radio" name="cash_type" id="cash_type" value="cash" checked="checked">
										เงินสด&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="radio" name="cash_type" id="cash_type" value="transfer">
										 เงินโอน&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 <input type="radio" name="cash_type" id="cash_type" value="cheque">
										 เช็ค
									</div>
								</div>
							</div>
						</div>
						<div class="row transfer" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										ธนาคาร
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
										เลขที่บัญชี
									</div>
									<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="" value="" type="text" class="form-control tnk-input-text">
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin: 5px;">
							<div class="col-md-12">
								<div class="col-md-12">
									<div class="col-md-6" align="right" style="font-size: 16px;padding-right: 0px;">
					                      <input type="radio" name="r_general_person" id="r_general_person" value="general_person" checked="checked">
					                     บุคคนทั่วไป&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                      <input type="radio" name="r_general_person" id="r_general_person" value="legal_entity">
					                      นิติบุคคล&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<div class="col-md-6" style="font-size: 16px;padding-left: 5px;">
										 
									</div>
								</div>
							</div>
						</div>
						<div class="general_person">
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
									<div class="col-md-6">
										<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
											เลขประจำตัวประชาชน
										</div>
										<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
							                  <input name="" value="" type="text" class="form-control tnk-input-text">
										</div>
									</div>
									<div class="col-md-6">
										<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
											
										</div>
										<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
	                      					 
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_id_card"></i>
											<i class="fa fa-close" id="i_close_id_card"></i>
											<b>สำเนาบัตรประชาชน</b>
											 <a id="btn_clear_id_card" class="clear_upload_file" style="cursor: pointer;">Clear</a>
											 <!-- <form id="form_id_card" class="form_upload"><input type="file" name="file_id_card" id="file_id_card" class="upload_file"/></form> -->
											 <input type="file" name="file_id_card" id="file_id_card" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_tax_id"></i>
											<i class="fa fa-close" id="i_close_tax_id"></i>
											<b>สำเนาบัตรประจำตัวผู้เสียภาษี</b>
											<a id="btn_clear_tax_id" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_tax_id" id="file_tax_id" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_commercial_reg"></i>
											<i class="fa fa-close" id="i_close_commercial_reg"></i>
											<b>สำเนาใบทะเบียนพาณิชย์  กรณีได้จดทะเบียนพาณิชย์</b>
											<a id="btn_clear_commercial_reg" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_commercial_reg" id="file_commercial_reg" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_register_home"></i>
											<i class="fa fa-close" id="i_close_register_home"></i>
											<b>สำเนาทะเบียนบ้าน</b>
											<a id="btn_clear_register_home" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_register_home" id="file_register_home" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_gen_passbook"></i>
											<i class="fa fa-close" id="i_close_gen_passbook"></i>
											<b>สำเนาสมุดบัญชีเงินฝาก</b>
											<a id="btn_clear_gen_passbook" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_gen_passbook" id="file_gen_passbook" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_register_home_vat"></i>
											<i class="fa fa-close" id="i_close_register_home_vat"></i>
											<b>สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20) ( กรณีจดทะเบียนภาษีมูลค่าเพิ่ม )</b>
											<a id="btn_clear_register_home_vat" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_register_home_vat" id="file_register_home_vat" class="upload_file"/>
										</div>
								</div>
							</div>
						</div>
						<div class="legal_entity">
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
									<div class="col-md-6">
										<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
											เลขทะเบียนการค้า
										</div>
										<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
							                  <input name="" value="" type="text" class="form-control tnk-input-text">
										</div>
									</div>
									<div class="col-md-6">
										<div class="col-md-5" align="right" style="font-size: 16px;padding-right: 5px;">
											
										</div>
										<div class="col-md-7" align="left" style="font-size: 16px;padding-left: 0px;">
	                      					 
										</div>
									</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_commercial_reg_no"></i>
											<i class="fa fa-close" id="i_close_commercial_reg_no"></i>
											<b>เลขทะเบียนการค้า</b>
											<a id="btn_clear_commercial_reg_no" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_commercial_reg_no" id="file_commercial_reg_no" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_certificate_reg_pns"></i>
											<i class="fa fa-close" id="i_close_certificate_reg_pns"></i>
											<b>	สำเนาหนังสือรับรองการจดทะเบียนห้างหุ้นส่วน/บริษัท (อายุไม่เกิน 2 เดือน) </b>
											<a id="btn_clear_certificate_reg_pns" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_certificate_reg_pns" id="file_certificate_reg_pns" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_show_reg_pns"></i>
											<i class="fa fa-close" id="i_close_show_reg_pns"></i>
											<b>สำเนาใบสำคัญแสดงการจดทะเบียนห้างหุ้นส่วน / บริษัท</b>
											<a id="btn_clear_show_reg_pns" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_show_reg_pns" id="file_show_reg_pns" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_vat_reg"></i>
											<i class="fa fa-close" id="i_close_vat_reg"></i>
											<b>สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20)</b>
											<a id="btn_clear_vat_reg" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_vat_reg" id="file_vat_reg" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_power_attorney"></i>
											<i class="fa fa-close" id="i_close_power_attorney"></i>
											<b>หนังสือมอบอำนาจพร้อมอากรแสตมป์กรณีที่ผู้มีอำนาจไม่สามารถมาดำเนินการได้ด้วยตนเอง</b>
											<a id="btn_clear_power_attorney" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_power_attorney" id="file_power_attorney" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_reg_house_power"></i>
											<i class="fa fa-close" id="i_close_reg_house_power"></i>
											<b>สำเนาทะเบียนบ้านของผู้มีอำนาจลงนาม</b>
											<a id="btn_clear_reg_house_power" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_reg_house_power" id="file_reg_house_power" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_leg_passbook"></i>
											<i class="fa fa-close" id="i_close_leg_passbook"></i>
											<b>สำเนาสมุดบัญชีเงินฝาก</b>
											<a id="btn_clear_leg_passbook" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_leg_passbook" id="file_leg_passbook" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_leg_id_card"></i>
											<i class="fa fa-close" id="i_close_leg_id_card"></i>
											<b>สำเนาบัตรประชาชนของผู้มีอำนาจลงนาม</b>
											<a id="btn_clear_leg_id_card" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_leg_id_card" id="file_leg_id_card" class="upload_file"/>
										</div>
								</div>
							</div>
							<div class="row" style="margin: 5px;">
								<div class="col-md-12">
										<div class="col-md-12" align="left" style="font-size: 16px;padding-left: 21%;">
											<i class="fa fa-check" id="i_check_other"></i>
											<i class="fa fa-close" id="i_close_other"></i>
											<b>อื่น ๆ</b>
											<a id="btn_clear_other" class="clear_upload_file" style="cursor: pointer;">Clear</a><input type="file" name="file_other" id="file_other" class="upload_file"/>
										</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box-body" style="padding: 0px;">
					<div class="box">
						<div class="box-header with-border">
							<a href="#" class="btn btn-info" data-toggle="modal" data-target="#popup_company" data-backdrop="static" data-keyboard="false" onclick="add_company();"><i class="fa fa-plus"></i> สร้าง</a>
							<h3 class="box-title">บริษัท / สาขา</h3>
						</div>
						<div class="box-body table-responsive no-padding">
							<table id="company_contact_table" class="table table-hover table-bordered">
								<thead>
									<tr class="bg-light-blue disabled ">
										<th class="text-center">ชื่อ<input type="hidden" id="company_contact_last_row" name="company_contact_last_row" /></th>
										<th class="text-center">ที่อยู่</th>
										<th class="text-center">แผนที่</th>
										<th class="text-center">ชื่อผู้ติดต่อ</th>
										<th class="text-center">เบอร์โทร</th>
										<th></th>
									</tr>
								</thead>
								<tbody id="company_contact_body">

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="box-body" style="padding: 0px;">
					<div class="box">
						<div class="box-header with-border">
							<div class="btn-group">
								<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<i class="fa fa-plus"></i> สร้าง
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#" data-toggle="modal" data-target="#popup_product" data-backdrop="static" data-keyboard="false" data-tnk="ค่าใช้จ่าย" data-tnk-val="EXPENSE">ค่าใช้จ่าย</a></li>
									<li><a href="#" data-toggle="modal" data-target="#popup_product" data-backdrop="static" data-keyboard="false" data-tnk="ทรัพย์สิน" data-tnk-val="ASSET">ทรัพย์สิน</a></li>
									<li><a href="#" data-toggle="modal" data-target="#popup_product" data-backdrop="static" data-keyboard="false" data-tnk="Stock" data-tnk-val="STOCK">Stock</a></li>
								</ul>
							</div>
							<h3 class="box-title">สินค้า / บริการ</h3>
						</div>
						<div class="box-body table-responsive no-padding">
							<table class="table table-hover table-bordered">
								<thead>
									<tr class="bg-light-blue disabled ">
										<th class="text-center">รหัส</th>
										<th class="text-center">ประเภท</th>
										<th class="text-center">กลุ่ม</th>
										<th class="text-center">ชนิด</th>
										<th class="text-center">ราคา</th>
										<th class="text-center">Barcode (ref.)</th>
										<th class="text-center">ชื่อสินค้า (ref.)</th>
										<th></th>
									</tr>
								</thead>
								<tbody>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<c:choose>
					<c:when test="${view != 'info'}">
						<div class="box-footer">
							<a href="list_request_vender.htm" class="btn btn-default">Cancel</a>
							<button type="submit" class="btn btn-info pull-right">Save</button>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>



		<!-- COMPANY POPUP -->
		<div id="popup_company" class="modal fade" role="dialog">
			<div class="modal-dialog" style="width: 70%">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">บริษัท / สาขา</h4>
					</div>
					<div class="modal-body">
						<table style="width: 100%" border="0">
							<tr>
								<td align="right" style="padding: 5px;width: 30%;">
									ชื่อบริษัท / สาขา
								</td>
								<td style="padding: 5px;width: 30%;">
									<input id="popup_company_id" name="popup_company_id" value="" type="hidden"/>
									<input id="company_contact_del_id" name="company_contact_del_id" value="" type="hidden"/>
									<input id="popup_company_name" name="popup_company_name" value="" type="text" class="form-control tnk-input-text">
								</td>
								<td style="width: 40%"></td>
							</tr>
							<tr>
								<td align="right" style="padding: 5px;">
									ที่อยู่
								</td>
								<td style="padding: 5px;">
									<input id="popup_company_address" name="popup_company_address" value="" type="text" class="form-control tnk-input-text">
								</td>
								<td></td>
							</tr>
							<tr>
								<td align="right" style="padding: 5px;">
									แผนที่ตั้งโรงงาน
								</td>
								<td style="padding: 5px;">
									<input id="popup_company_location" name="popup_company_location" value="" type="text" class="form-control tnk-input-text" readonly="readonly">
								</td>
								<td>
									<button type="button" class="btn btn-sm btn-default gllpSearchButton"><i class="fa fa-search bigger-110"></i>เลือกพิกัด</button>
								</td>
							</tr>
							<tr>
								<td colspan="3" align="center">
									<fieldset id="MapLocation" class="gllpLatlonPicker" >
										<div  >
											<button type="button" class="btn btn-sm btn-primary GetLocation">เลือกพิกัดนี้ </button>
											<button type="button" class="btn btn-sm btn-danger CancelLocation">ยกเลิกการเลือก </button>
											
											<input type="hidden" class="gllpSearchField"  value="ไทย">
											<br/><br/>
											<div class="gllpMap">Google Maps</div>
											<span style="color: red;font-size: 12px;font-style: italic;"><br>* ดับเบิ้ลคลิกที่แผนที่ เพื่อเปลี่ยนจุดพิกัด  </span>
				 							<input type="hidden" class="gllpLatitude form-control col-sm-1" value="13.7563309"/>
				 							<input type="hidden" class="gllpLongitude form-control col-sm-1" value="100.50176510000006"/>
											<input type="hidden" class="gllpZoom" value="10"/>
										</div>
									</fieldset>
								</td>
							</tr>
							<tr>
								<td colspan="3">
										<button type="button" class="btn btn-info" onclick="add_company_contact_detail_empty();">
											<i class="fa fa-plus"></i> สร้าง
										</button>
										<table id="popup_company_contact_table" class="table table-hover table-bordered" style="font-size: 12px;">
											<thead>
												<tr class="bg-light-blue disabled ">
													<th class="text-center">ชื่อ<input type="hidden" id="popup_company_contact_last_row" name="popup_company_contact_last_row"/></th>
													<th class="text-center">ตำแหน่ง</th>
													<th class="text-center">เบอร์โทร</th>
													<th class="text-center">Email</th>
													<th class="text-center">มีอำนาจอนุมัติ</th>
													<th></th>
												</tr>
											</thead>
											<tbody id="body_contact">
			
											</tbody>
										</table>
								</td>
							</tr>
							<tr>
								<td colspan="3" align="right">
									<a id="a_company" class="btn btn-success" style="cursor: pointer;">เสร็จสิ้น</a>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		<!-- PRODUCT POPUP -->
		<div id="popup_product" class="modal fade" role="dialog">
			<div class="modal-dialog" style="width: 70%">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">	สินค้า / บริการ (<label id="label_title" style="font-size: 14px;"></label>)</h4>
					</div>
					<div class="modal-body">
						<table id="popup_company_product_table" class="table table-hover table-bordered" style="font-size: 12px;">
							<thead>
								<tr>
									<td  colspan="7">
									<table style="width: 100%">
										<tr>
										<td align="right" valign="middle" style="font-size: 16px;padding: 5px;">
											ค้นหา
										</td>
										<td>
											<input id="txt_search" name="txt_search" value="" type="text" class="form-control tnk-input-text">
										</td>
										<td align="right">
											<a id="a_product" class="btn btn-success" style="cursor: pointer;">เสร็จสิ้น</a>
										</td>
										</tr>
									</table>
									</td>
								</tr>
								<tr class="bg-light-blue disabled ">
									<th class="text-center">รหัส</th>
									<th class="text-center">ประเภท</th>
									<th class="text-center">กลุ่ม</th>
									<th class="text-center">ชนิด</th>
									<th class="text-center">ราคา</th>
									<th class="text-center">Barcode (ref.)</th>
									<th class="text-center">ชื่อสินค้า (ref.)</th>
								</tr>
							</thead>
							<tbody id="body_product">

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
	</section>
	
	<script type="text/javascript">

		$(document).ready(function() {
				//##### init #####
				
				var i_check = "", btn_clear = "";
				var arr_name_upload = ["id_card", "tax_id", "commercial_reg", "register_home", "gen_passbook", "register_home_vat",
					"commercial_reg_no", "certificate_reg_pns", "show_reg_pns", "vat_reg", "power_attorney", "reg_house_power", 
					"leg_passbook", "leg_id_card", "other"];
				
				$.each( arr_name_upload, function( key, value ) {
					i_check = "#i_check_".concat(value);
					btn_clear = "#btn_clear_".concat(value);
					
					$(i_check).hide();
					$(btn_clear).hide();
				});
				//##### end init #####

				//##### upload file #####
				$('.upload_file').on("change", function() {//upload
					var value = $(this).attr('id').replace("file_", "");
					var  btn_clear = "#btn_clear_".concat(value);
					var i_check = "#i_check_".concat(value);
					var i_close = "#i_close_".concat(value);
					var form = "#form_".concat(value);
					$(btn_clear).show();
					$(i_check).show();
					$(i_close).hide();
					$(form).submit();
				});
				
				$('.clear_upload_file').on("click", function() {//clear upload
					var value = $(this).attr('id').replace("btn_clear_", "");
					var  btn_clear = "#btn_clear_".concat(value);
					var i_check = "#i_check_".concat(value);
					var i_close = "#i_close_".concat(value);
					var file = "#file_".concat(value);
					$(file).val('');
					$(btn_clear).hide();
					$(i_check).hide();
					$(i_close).show();
				});
				
				$(".form_upload").on("submit", function (event) {
	                event.preventDefault(); //prevent default submitting
	                var formData = new FormData($(this)[0]);
	                $.ajax({
	                    url: "upload.htm",
	                    type: "post",
	                    data: formData,
	                    processData: false, //Not to process data
	                    contentType: false, //Not to set contentType
	                    success: function (data) {
	                        //alert(data);
	                    }
	                });
	            });
				//##### end upload file #####

				
				//##### map #####
				$('.gllpSearchButton').on("click", function() {
					$('#MapLocation').fadeIn();
					$('.gllpSearchButton').fadeOut();
				});
				$('#MapLocation').fadeOut();

				$('.GetLocation').on("click", function() {
					var lat = $('.gllpLatitude').val();
					var lon = $('.gllpLongitude').val();
					var res = lat.concat(", ");
					res = res.concat(lon);
					$('#popup_company_location').val(res);
					$('#MapLocation').fadeOut();
					$('.gllpSearchButton').fadeIn();
					return false;
				});
				$('.CancelLocation').on("click", function() {
					$('#MapLocation').fadeOut();
					$('.gllpSearchButton').fadeIn();
					return false;
				});
				//##### end map #####

				$("#txt_search").on("keyup", function() {
					var value = $(this).val().toLowerCase();
					$("#body_product tr").filter(function() {
						$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
					});
				});

				$('#a_company').on("click", function() {
					var company_contact = get_value_popup_company_contact();
					
					$.ajax({
						url: "${pageContext.request.contextPath}/add_company_contact.htm",
						type: 'POST',
						dataType: 'json',
						data: JSON.stringify(company_contact),
						contentType: 'application/json',
						mimeType: 'application/json',
						
						success: function (data) {
							reload_company_list(data);
				        },
						error:function(data,status,er) {
							alert("error: "+data+" status: "+status+" er:"+er);
						}
					});
					
					$('#popup_company').modal('toggle');
				});

				$('#a_product').on("click", function() {
					var company_product = get_value_popup_company_product();
					
					$.ajax({
						url: "${pageContext.request.contextPath}/add_company_product.htm",
						type: 'POST',
						dataType: 'json',
						data: JSON.stringify(company_product),
						contentType: 'application/json',
						mimeType: 'application/json',
						
						success: function (data) {
							reload_product_list(data);
						},
						error:function(data,status,er) {
							alert("error: "+data+" status: "+status+" er:"+er);
						}
					});
					
					$('#popup_company').modal('toggle');
				});
				
				$(".legal_entity").hide();
				$(".transfer").hide();
				$('input[type="radio"]').click(function() {
					if ($(this).is(':checked')) {
						var val = $(this).val();
						if (val == "general_person") {
							$(".general_person").show();
							$(".legal_entity").hide();
						}
						if (val == "legal_entity") {
							$(".legal_entity").show();
							$(".general_person").hide();
						}

						if (val == "cash" || val == "cheque") {
							$(".transfer").hide();
						}
						if (val == "transfer") {
							$(".transfer").show();
						}
					}
				});

				$('[data-tnk]').on("click", function() {
					var val = $(this).attr("data-tnk");
					$('#label_title').html(val);
					
					var tnk_val = $(this).attr("data-tnk-val");
					var list_company_product;
					if(tnk_val == "EXPENSE"){
						list_company_product = ${list_product_expense};
					}
					if(tnk_val == "ASSET"){
						list_company_product = ${list_product_asset};
					}
					if(tnk_val == "STOCK"){
						list_company_product = ${list_product_stock};
					}
					
					$('#body_product').html("<tr></tr>");
					$.each(list_company_product, function(index, detail) {
						add_popup_company_product(detail.id, detail.code, detail.type_name, detail.group_name, detail.kind_name, detail.price, detail.barcode_ref, detail.name_ref);
					});
				});
				
		});

		function add_company_contact(loop_contact, id, name, address, location, contact_name, contact_tel, row_id_del) {
			var html = '';
			//var row_id_del = "'company_contact_row_" + loop_contact + "'";
			var row_id = row_id_del.replace(/'/g, "");//"company_contact_row_" + loop_contact;
			html += '<tr id="'+row_id+'">';

			html += '<input id="company_contact_del_id_'+loop_contact+'" name="company_contact_del_id_'+loop_contact+'" type="hidden"  value="'+row_id_del+'">';
			html += '<input id="company_contact_id_'+loop_contact+'" name="company_contact_id_'+loop_contact+'" type="hidden"  value="'+id+'">';
			html += '<input id="company_contact_name_'+loop_contact+'" name="company_contact_name_'+loop_contact+'" type="hidden" class="form-control" style="height: 25px;" value="'+name+'">';
			html += '<input id="company_contact_address_'+loop_contact+'" name="company_contact_address_'+loop_contact+'" type="hidden" class="form-control" style="height: 25px;" value="'+address+'">';
			html += '<input id="company_contact_location_'+loop_contact+'" name="company_contact_location_'+loop_contact+'" type="hidden" class="form-control" style="height: 25px;" value="'+location+'">';
			html += '<input id="company_contact_contact_name_'+loop_contact+'" name="company_contact_contact_name_'+loop_contact+'" type="hidden" class="form-control" style="height: 25px;" value="'+name+'">';
			html += '<input id="company_contact_contact_tel_'+loop_contact+'" name="company_contact_contact_tel_'+loop_contact+'" type="hidden" class="form-control" style="height: 25px;" value="'+name+'">';

			html += '<td class="text-center"><label>'+name+'</label></td>';
			html += '<td class="text-center"><label>'+address+'</label></td>';
			html += '<td class="text-center"><label>'+location+'</label></td>';
			html += '<td class="text-center"><label>'+contact_name+'</label></td>';
			html += '<td class="text-center"><label>'+contact_tel+'</label></td>';
			
			html += '<td class="text-center">';
			html += '<span class="badge bg-yellow detail" style="cursor: pointer;" data="EDIT" onclick="edit_company('+ row_id_del + ')">แก้ไข</span>&nbsp;';
			html += '<span class="badge bg-red detail" style="cursor: pointer;" data="DELETE" onclick="del_company('+ row_id_del + ')">ลบ</span>';
			html += '</td>';
			html += '</tr>';

			$('#company_contact_last_row').val(loop_contact);
			$('#company_contact_table tr:last').after(html);
		}

		var loop_contact_detail = 1;
		function add_company_contact_detail_empty() {
			add_company_contact_detail(0, '', '', '', '', false);
		}

		function add_company_contact_detail(id, name, position, tel, email, approve) {
			var html = '';
			var row_id_del = "'company_contact_detail_row_" + loop_contact_detail + "'";
			var row_id = "company_contact_detail_row_" + loop_contact_detail;
			html += '<tr id="'+row_id+'">';

			html += '<input id="company_contact_detail_del_id_'+loop_contact_detail+'" name="company_contact_detail_del_id_'+loop_contact_detail+'" type="hidden"  value="'+row_id_del+'">';
			html += '<input id="company_contact_detail_id_'+loop_contact_detail+'" name="company_contact_detail_id_'+loop_contact_detail+'" type="hidden"  value="'+id+'">';

			html += '<td class="text-center"><input id="company_contact_detail_name_'+loop_contact_detail+'" name="company_contact_detail_name_'+loop_contact_detail+'" type="text" class="form-control" style="height: 25px;" value="'+name+'"></td>';
			html += '<td class="text-center"><input id="company_contact_detail_position_'+loop_contact_detail+'" name="company_contact_detail_position_'+loop_contact_detail+'" type="text" class="form-control" style="height: 25px;" value="'+position+'"></td>';
			html += '<td class="text-center"><input id="company_contact_detail_tel_'+loop_contact_detail+'" name="company_contact_detail_tel_'+loop_contact_detail+'" type="text" class="form-control" style="height: 25px;" value="'+tel+'"></td>';
			html += '<td class="text-center"><input id="company_contact_detail_email_'+loop_contact_detail+'" name="company_contact_detail_email_'+loop_contact_detail+'" type="text" class="form-control" style="height: 25px;" value="'+email+'"></td>';

			if (approve) {
				html += '<td class="text-center"><input id="company_contact_detail_approve_'+loop_contact_detail+'" name="company_contact_detail_approve_'+loop_contact_detail+'" type="checkbox" checked="checked"></td>';
			} else {
				html += '<td class="text-center"><input id="company_contact_detail_approve_'+loop_contact_detail+'" name="company_contact_detail_approve_'+loop_contact_detail+'" type="checkbox" ></td>';
			}

			html += '<td class="text-center">';
			html += '<span class="badge bg-red detail" style="cursor: pointer;" data="DELETE" onclick="deleteRow('+ row_id_del + ')">ลบ</span>';

			html += '</td>';
			html += '</tr>';

			$('#popup_company_contact_last_row').val(loop_contact_detail);
			loop_contact_detail++;
			
			$('#popup_company_contact_table tr:last').after(html);
		}
		
		function get_value_popup_company_contact() {
			var obj_company_contact_head = new Object();

			var key = "popup_company_id";
			var id = document.getElementById(key).value;
			obj_company_contact_head.id = id;

			key = "company_contact_del_id";
			var row_id_del = document.getElementById(key).value;
			obj_company_contact_head.row_id_del = row_id_del;

			key = "popup_company_name";
			var name = document.getElementById(key).value;
			obj_company_contact_head.name = name;

			key = "popup_company_address";
			var address = document.getElementById(key).value;
			obj_company_contact_head.address = address;

			key = "popup_company_location";
			var location = document.getElementById(key).value;
			obj_company_contact_head.location = location;

			var list_obj_company_contact_detail = [];
			var last_id = document.getElementById("popup_company_contact_last_row").value;

			for (let index = 1; index <= last_id; index++) {
				var obj_company_contact_detail = new Object();

				key = "company_contact_detail_del_id_"+index;
				if(document.getElementById(key) == null) continue;

				var row_id_del = document.getElementById(key).value;
				obj_company_contact_detail.row_id_del = row_id_del;

				key = "company_contact_detail_id_"+index;
				id = document.getElementById(key).value;
				obj_company_contact_detail.id = id;

				key = "company_contact_detail_name_"+index;
				name = document.getElementById(key).value;

				if(name == null) continue;

				obj_company_contact_detail.name = name;

				key = "company_contact_detail_position_"+index;
				var position = document.getElementById(key).value;
				obj_company_contact_detail.position = position;

				key = "company_contact_detail_tel_"+index;
				var tel = document.getElementById(key).value;

				if(tel == null) continue;

				obj_company_contact_detail.tel = tel;
				
				key = "company_contact_detail_email_"+index;
				var email = document.getElementById(key).value;
				obj_company_contact_detail.email = email;
				
				key = "company_contact_detail_approve_"+index;
				var approve = document.getElementById(key).checked;
				obj_company_contact_detail.approve = approve;

				if(approve){
					obj_company_contact_head.contact_name = name;
					obj_company_contact_head.contact_tel = tel;
				}

				list_obj_company_contact_detail.push(obj_company_contact_detail);
			}

			obj_company_contact_head.list_company_contact_detail = list_obj_company_contact_detail;

			return obj_company_contact_head;
		}

		function reload_company_list(list_company_contact){
			document.getElementById("company_contact_body").innerHTML = "<tr></tr>";
			$.each(list_company_contact, function(index, head) {
				add_company_contact(index, head.id, head.name, head.address, head.location, head.contact_name, head.contact_tel, head.row_id_del);
			});
		}

		function reload_contact_list(list_company_contact_detail){
			var list_detail = list_company_contact_detail;
			var i;
			var iLength = list_detail.length;
			for (i = 0; i < iLength; i++) {
				add_company_contact_detail(list_detail[i].id, list_detail[i].name, list_detail[i].position, list_detail[i].tel, list_detail[i].email, list_detail[i].approve);
			}
		}

		function add_company(){
			document.getElementById("popup_company_name").value = "";
			document.getElementById("popup_company_address").value = "";
			document.getElementById("popup_company_location").value = "";
			document.getElementById("company_contact_del_id").value = "";
			document.getElementById("body_contact").innerHTML = "<tr></tr>";
		}

		function edit_company(rowid){
			var jsonObj = new Object();
			jsonObj.action = 'EDIT';
			jsonObj.str1 = "'".concat(rowid).concat("'");
		    $.ajax({
				url: "${pageContext.request.contextPath}/edit_del_company_contact.htm",
				type: 'POST',
				dataType: 'json',
				data: JSON.stringify(jsonObj),
				contentType: 'application/json',
				mimeType: 'application/json',
				success: function (data) {
					call_popup_company_contact(data);
				},
				error:function(data,status,er) {
					alert("error: "+data+" status: "+status+" er:"+er);
				}
			});
		}

		function call_popup_company_contact(company_contact){
			document.getElementById("popup_company_name").value = company_contact.name;
			document.getElementById("popup_company_address").value = company_contact.address;
			document.getElementById("popup_company_location").value = company_contact.location;
			document.getElementById("company_contact_del_id").value = company_contact.row_id_del;
			document.getElementById("body_contact").innerHTML = "<tr></tr>";

			reload_contact_list(company_contact.list_company_contact_detail);
			
			$("#popup_company").modal();
		}
		
		function del_company(rowid)  
		{   
			var jsonObj = new Object();
			jsonObj.action = "DELETE";
			jsonObj.str1 = "'".concat(rowid).concat("'");
		    $.ajax({
				url: "${pageContext.request.contextPath}/edit_del_company_contact.htm",
				type: 'POST',
				dataType: 'json',
				data: JSON.stringify(jsonObj),
				contentType: 'application/json',
				mimeType: 'application/json',
				
				success: function (data) {
					reload_company_list(data);
				},
				error:function(data,status,er) {
					alert("error: "+data+" status: "+status+" er:"+er);
				}
			});
		}

		var loop_product = 1;
		function add_company_product(id, code, type_name, group_name, kind_name, price, barcode_ref, name_ref) {
			var html = '';
			var row_id_del = "'company_product_row_" + loop_product + "'";
			var row_id = "company_product_row_" + loop_product;
			html += '<tr id="'+row_id+'">';

			html += '<input name="company_product_id_'+loop_product+'" type="hidden"  value="'+id+'">';
			
			html += '<td class="text-center"><input name="company_product_code_'+loop_product+'" type="hidden" value="'+code+'">'+code+'</td>';
			html += '<td class="text-center"><input name="company_product_type_name_'+loop_product+'" type="hidden" value="'+type_name+'">'+type_name+'</td>';
			html += '<td class="text-center"><input name="company_product_group_name_'+loop_product+'" type="hidden" value="'+group_name+'">'+group_name+'</td>';
			html += '<td class="text-center"><input name="company_product_kind_name_'+loop_product+'" type="hidden" value="'+kind_name+'">'+kind_name+'</td>';
			html += '<td class="text-center"><input name="company_product_price_'+loop_product+'" type="text" class="form-control" style="height: 25px;text-align: right;padding: 5px;" value="'+price+'"></td>';
			html += '<td class="text-center"><input name="company_product_barcode_ref_'+loop_product+'" type="text" class="form-control" style="height: 25px;padding: 5px;" value="'+barcode_ref+'"></td>';
			html += '<td class="text-center"><input name="company_product_name_ref_'+loop_product+'" type="text" class="form-control" style="height: 25px;padding: 5px;" value="'+name_ref+'"></td>';

			html += '</tr>';

			$('#company_product_last_row').val(loop_product);
			loop_product++;
			
			$('#company_product_table tr:last').after(html);
		}
		
		var loop_popup_product = 1;
		function add_popup_company_product(id, code, type_name, group_name, kind_name, price, barcode_ref, name_ref) {
			var html = '';
			var row_id_del = "'popup_company_product_row_" + loop_popup_product + "'";
			var row_id = "popup_company_product_row_" + loop_popup_product;
			html += '<tr id="'+row_id+'">';

			html += '<input name="popup_company_product_id_'+loop_popup_product+'" type="hidden"  value="'+id+'">';
			
			html += '<td class="text-center"><input name="popup_company_product_code_'+loop_popup_product+'" type="hidden" value="'+code+'">'+code+'</td>';
			html += '<td class="text-center"><input name="popup_company_product_type_name_'+loop_popup_product+'" type="hidden" value="'+type_name+'">'+type_name+'</td>';
			html += '<td class="text-center"><input name="popup_company_product_group_name_'+loop_popup_product+'" type="hidden" value="'+group_name+'">'+group_name+'</td>';
			html += '<td class="text-center"><input name="popup_company_product_kind_name_'+loop_popup_product+'" type="hidden" value="'+kind_name+'">'+kind_name+'</td>';
			html += '<td class="text-center"><input name="popup_company_product_price_'+loop_popup_product+'" type="text" class="form-control" style="height: 25px;text-align: right;padding: 5px;" value="'+price+'"></td>';
			html += '<td class="text-center"><input name="popup_company_product_barcode_ref_'+loop_popup_product+'" type="text" class="form-control" style="height: 25px;padding: 5px;" value="'+barcode_ref+'"></td>';
			html += '<td class="text-center"><input name="popup_company_product_name_ref_'+loop_popup_product+'" type="text" class="form-control" style="height: 25px;padding: 5px;" value="'+name_ref+'"></td>';

			html += '</tr>';

			$('#popup_company_product_last_row').val(loop_popup_product);
			loop_popup_product++;
			
			$('#popup_company_product_table tr:last').after(html);
		}

		function get_value_popup_company_product() {

			var list_obj_company_product = [];
			var last_id = document.getElementById("company_product_last_row").value;

			for (let index = 1; index <= last_id; index++) {
				var obj_company_product = new Object();

				var key = "company_product_code_"+index;
				var code = document.getElementById(key).value;
				obj_company_product.code = code;

				key = "company_product_type_name_"+index;
				var type_name = document.getElementById(key).value;
				obj_company_product.type_name = type_name;

				key = "company_product_group_name_"+index;
				var group_name = document.getElementById(key).value;
				obj_company_product.group_name = group_name;

				key = "company_product_kind_name_"+index;
				var kind_name = document.getElementById(key).value;
				obj_company_product.kind_name = kind_name;

				key = "company_product_price_"+index;
				if(document.getElementById(key) == null) continue;

				var price = document.getElementById(key).value;
				obj_company_product.price = price;

				key = "company_product_barcode_ref_"+index;
				var barcode_ref = document.getElementById(key).value;
				obj_company_product.barcode_ref = barcode_ref;

				key = "company_product_name_ref_"+index;
				var name_ref = document.getElementById(key).value;
				obj_company_product.name_ref = name_ref;


				list_obj_company_product.push(obj_company_product);
			}

		}

		function reload_product_list(list_company_product){
			var i;
			var iLength = list_company_product.length;
			for (i = 0; i < iLength; i++) {
				add_company_product(detail.id, detail.code, detail.type_name, detail.group_name, detail.kind_name, detail.price, detail.barcode_ref, detail.name_ref);
			}
		}
		
		function deleteRow(rowid)  
		{   
		    var row = document.getElementById(rowid);
		    row.parentNode.removeChild(row);
		}

	</script>

<%
if(!"info".equals(view)){
%>
	<%@ include file="../../footer.jsp" %>
<%
}
%> 
