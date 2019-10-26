<%@ include file="../../header.jsp" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
    
    <section class="content-header">
      <h1>สร้างใบขอเปิดบัญชีผู้จำหน่าย</h1>
    </section>

    <!-- Main content -->
    <section class="content">
		<form class="form-horizontal" action="${pageContext.request.contextPath}/add_edit_request_vender.htm" method="post" modelAttribute="command">
	    	<div>
				 <input name="timeadd_date" type="hidden"  value="${command.timeadd_date}">
				 <input name="timeadd_time" type="hidden"  value="${command.timeadd_time}">
				 <input name="timeadd_user" type="hidden"  value="${command.timeadd_user}">
				 <input name="timeupd_date" type="hidden"  value="${command.timeupd_date}">
				 <input name="timeupd_time" type="hidden"  value="${command.timeupd_time}">
				 <input name="timeupd_user" type="hidden"  value="${command.timeupd_user}">
				 <input id="last_row" name="last_row" type="hidden"  value="1">
			</div>
			<div class="row">
				<div class="col-lg-12 col-xs-12">
					<div class="box-body">
						<div class="box box-primary">
							<div class="row">
								<div align="center" style="font-size: 20px;"><b>บริษัท อินเตอร์ เอ็กซ์เพรส โลจิสติกส์ (Group) จำกัด </b></div>
							</div>
							<div class="row">
								<div align="center" style="font-size: 20px;"><b>ใบเปิดหน้าบัญชี</b></div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" style="font-size: 16px;font-weight: bold;">เลขที่ใบขอ ${RequestVender.getRequest_vender_code()}</div>
									<div class="col-md-5"></div>
									<div class="col-md-4" style="font-size: 16px;font-weight: bold;">รหัสผู้จำหน่าย ${RequestVender.getVender_code()}</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" style="font-size: 16px;font-weight: bold;">วันที่ ${RequestVender.getRequest_vender_date()}</div>
									<div class="col-md-5"></div>
									<div class="col-md-4" style="font-size: 16px;font-weight: bold;">รหัสอ้างอิง ${RequestVender.getVender_ref_code()}</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-12" align="left" style="font-size: 16px;">เรียน ผู้จัดการฝ่ายจัดซื้อ  บริษัท อินเตอร์ เอ็กซ์เพรส โลจิสติกส์ (Group) จำกัด</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-12" align="left" style="font-size: 16px;"><dd>ด้วยข้าพเจ้ามีความประสงค์จะเสนอขายสินค้าให้แก่บริษัท อินเตอร์ เอ็กซ์เพรส โลจิสติกส์ (Group) จำกัด จึงขอส่งรายละเอียดต่าง ๆ </dd></div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-12" align="left" style="font-size: 16px;">ให้พิจารณาดังนี้</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-12" align="left" style="font-size: 16px;"><b>1. รายละเอียดผู้จัดจำหน่าย  :</b></div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										ชื่อที่ใช้ติดต่อทางการค้า
									</div>
									<div class="col-md-9" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="trade_contact" type="text" class="form-control" style="height: 25px; width: 300px;" value="${command.trade_contact }">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										ชื่อกลุ่ม (ถ้ามี)
									</div>
									<div class="col-md-9" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="group_name" type="text" class="form-control" style="height: 25px; width: 300px;" value="${command.group_name}">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										เลขประจำตัวผู้เสียภาษี
									</div>
									<div class="col-md-9" align="left" style="font-size: 16px;padding-left: 0px;">
										<input name="tax_id" type="text" class="form-control" style="height: 25px; width: 300px;" value="${command.tax_id}">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										ประเภทผู้ประกอบการ
									</div>
									<div class="col-md-9" align="left" style="font-size: 16px;padding-left: 0px;">
										<div class="form-group radio" style="margin-left: 5px; height: 25px; padding: 0px;">
                                            <div class="col-md-6" style="font-size: 16px;padding-left: 0px;">
                                            	<div class="col-md-7" style="font-size: 16px;padding-right: 0px;">
                                            		<input name="vat_registration" value="true" type="radio" <c:if test="${command.vat_registration}">checked</c:if>>จดทะเบียนภาษีมูลค่าเพิ่ม
                                            	</div>
                                            	<div class="col-md-5" style="font-size: 16px;padding-left: 0px;">
                                            		<div class="col-md-3" style="font-size: 16px;padding-left: 0px;">
                                            	 		<input name="vat_percent" type="text" class="form-control" style="height: 25px; width: 30px;text-align: right;padding: 5px;" value="${command.vat_percent}">
                                            	 	</div>
                                            	 	<div class="col-md-9" style="font-size: 16px;padding-left: 0px;">%</div>
												</div>
											</div>
                                            <div class="col-md-6">
                                            	<input name="vat_registration" value="false" type="radio" <c:if test="${!command.vat_registration}">checked</c:if>>ไม่ได้จดทะเบียนมูลค่าเพิ่ม
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										ระบบภาษี
									</div>
									<div class="col-md-9" align="left" style="font-size: 16px;padding-left: 0px;">
										<div class="form-group radio" style="margin-left: 5px; height: 25px; padding: 0px;">
                                            <div class="col-md-6">
                                            	<input type="radio" name="vat_separately" value="true" <c:if test="${command.vat_separately}">checked</c:if>>ภาษีมูลค่าเพิ่มแยกนอก (Exciusive Vat)
											</div>
                                            <div class="col-md-6">
                                            	<input type="radio" name="vat_separately" value="false" <c:if test="${!command.vat_separately}">checked</c:if>>ภาษีมูลค่าเพิ่มรวมใน (Inclusive Vat)
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										ลักษณะกิจการ
									</div>
									<div class="col-md-9" align="left" style="font-size: 16px;padding-left: 0px;">
										<div class="form-group radio" style="margin-left: 5px; height: 25px; padding: 0px;">
                                            <div class="col-md-3">
                                            	<input type="radio" name="nature_of_business" value="0" <c:if test="${command.nature_of_business==0}">checked</c:if>> ผู้ผลิต
											</div>
                                            <div class="col-md-3">
                                            	<input type="radio" name="nature_of_business" value="1" <c:if test="${command.nature_of_business==1}">checked</c:if>>ตัวแทนจำหน่าย 
											</div>
                                            <div class="col-md-6">
                                            	<div class="col-md-3" style="font-size: 16px;padding-right: 0px;">
                                            		<input type="radio" name="nature_of_business" value="2" <c:if test="${command.nature_of_business==2}">checked</c:if>>อื่น ๆ ระบุ
                                            	</div>
                                            	<div class="col-md-9" style="font-size: 16px;padding-left: 0px;">
                                            		<input name="nature_of_business_remark" type="text" class="form-control" style="height: 25px; width: 150px;" value="">
                                            	</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-12" align="left" style="font-size: 16px;"><b>2. ที่อยู่ / ที่ติดต่อทางการค้า  :</b></div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										สำนักงานใหญ่
									</div>
									<div class="col-md-9" align="left" style="font-size: 16px;padding-left: 0px;">
										<div class="col-md-5">
											<input name="headquarters" type="text" class="form-control" style="height: 25px; width: 300px;" value="${command.headquarters}">
										</div>
										<div class="col-md-7">
											<div class="col-md-3" style="font-size: 16px;padding-right: 5px;" align="right">โทรศัพท์</div>
											<div class="col-md-3" style="font-size: 16px;padding-left: 0px;"><input name="tel_headquarters" type="text" class="form-control" style="height: 25px; width: 100px;" value="${command.tel_headquarters}"></div>
											<div class="col-md-3" style="font-size: 16px;padding-right: 5px;" align="right">โทรสาร</div>
											<div class="col-md-3" style="font-size: 16px;padding-left: 0px;"><input name="tax_headquarters" type="text" class="form-control" style="height: 25px; width: 100px;" value="${command.tax_headquarters}"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										โรงงาน
									</div>
									<div class="col-md-9" align="left" style="font-size: 16px;padding-left: 0px;">
										<div class="col-md-5">
											<input name="factory" type="text" class="form-control" style="height: 25px; width: 300px;" value="${command.factory}">
										</div>
										<div class="col-md-7">
											<div class="col-md-3" style="font-size: 16px;padding-right: 5px;" align="right">โทรศัพท์</div>
											<div class="col-md-3" style="font-size: 16px;padding-left: 0px;"><input name="tel_factory" type="text" class="form-control" style="height: 25px; width: 100px;" value="${command.tel_factory}"></div>
											<div class="col-md-3" style="font-size: 16px;padding-right: 5px;" align="right">โทรสาร</div>
											<div class="col-md-3" style="font-size: 16px;padding-left: 0px;"><input name="tax_factory" type="text" class="form-control" style="height: 25px; width: 100px;" value="${command.tax_factory}"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" align="right" style="font-size: 16px;padding-right: 5px;">
										<b>ผู้ติดต่อ</b>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3">
									
									</div>
									<div class="col-md-9">
										<div class="col-md-1" style="font-size: 16px;padding-right: 0px;">1. ชื่อ</div>
										<div class="col-md-3" style="font-size: 16px;padding-left: 0px;"><input name="contact_name1" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_name1}"></div>
										<div class="col-md-1">ตำแหน่ง</div>
										<div class="col-md-3"><input name="contact_position1" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_position1}"></div>
										<div class="col-md-1">โทรศัพท์</div>
										<div class="col-md-3"><input name="contact_tel1" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_tel1}"></div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3">
									
									</div>
									<div class="col-md-9">
										<div class="col-md-1" style="font-size: 16px;padding-right: 0px;">2. ชื่อ</div>
										<div class="col-md-3" style="font-size: 16px;padding-left: 0px;"><input name="contact_name2" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_name2}"></div>
										<div class="col-md-1">ตำแหน่ง</div>
										<div class="col-md-3"><input name="contact_position2" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_position2}"></div>
										<div class="col-md-1">โทรศัพท์</div>
										<div class="col-md-3"><input name="contact_tel2" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_tel2}"></div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3">
									
									</div>
									<div class="col-md-9">
										<div class="col-md-1" style="font-size: 16px;padding-right: 0px;">3. ชื่อ</div>
										<div class="col-md-3" style="font-size: 16px;padding-left: 0px;"><input name="contact_name3" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_name3}"></div>
										<div class="col-md-1">ตำแหน่ง</div>
										<div class="col-md-3"><input name="contact_position3" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_position3}"></div>
										<div class="col-md-1">โทรศัพท์</div>
										<div class="col-md-3"><input name="contact_tel3" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_tel3}"></div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3">
									
									</div>
									<div class="col-md-9">
										<div class="col-md-1" style="font-size: 16px;padding-right: 0px;">4. ชื่อ</div>
										<div class="col-md-3" style="font-size: 16px;padding-left: 0px;"><input name="contact_name4" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_name4}"></div>
										<div class="col-md-1">ตำแหน่ง</div>
										<div class="col-md-3"><input name="contact_position4" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_position4}"></div>
										<div class="col-md-1">โทรศัพท์</div>
										<div class="col-md-3"><input name="contact_tel4" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.contact_tel4}"></div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-12" align="left" style="font-size: 16px;"><b>3.  การชำระเงิน  :</b></div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12" style="font-size: 16px;">
									<dd><u>สำหรับค่าสินค้าจะโอนชำระผ่านบัญชีธนาคาร  xxxxxxxxxxx  จำกัด  (มหาชน)</u></dd>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12" style="font-size: 16px;">
									<div class="col-md-3" style="font-size: 16px;padding-right: 5px;" align="right">
										บัญชีกระแสรายวัน เลขที่บัญชี
									</div>
									<div class="col-md-9" style="font-size: 16px;padding-left: 0px;">
										<input name="current_account_no" type="text" class="form-control" style="height: 25px; width: 300px;" value="${command.current_account_no}">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12" style="font-size: 16px;">
									<div class="col-md-3" style="font-size: 16px;padding-right: 5px;" align="right">
										บัญชีออมทรัพย์ เลขที่บัญชี
									</div>
									<div class="col-md-9" style="font-size: 16px;padding-left: 0px;">
										<input name="saving_account_no" type="text" class="form-control" style="height: 25px; width: 300px;" value="${command.saving_account_no}">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12" style="font-size: 16px;">
									<div class="col-md-3" style="font-size: 16px;padding-right: 5px;" align="right">
										ชื่อบัญชี
									</div>
									<div class="col-md-9" style="font-size: 16px;padding-left: 0px;">
										<div class="col-xs-5" style="font-size: 16px;padding-left: 0px;">
											<input name="account_name" type="text" class="form-control" style="height: 25px; width: 300px;" value="${command.account_name}">
										</div>
										<div class="col-xs-7" style="font-size: 14px;">
											( ชื่อบัญชีที่ระบุต้องตรงกับชื่อที่ใช้ติดต่อทางการค้าในข้อ 1 )
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12" style="font-size: 16px;">
									<div class="col-xs-12" style="font-size: 16px;">
										<div class="col-md-3" style="font-size: 16px;padding-right: 5px;" align="right">
											
										</div>
										<div class="col-md-9" style="font-size: 14px;padding-left: 0px;">
											โดยผู้จัดจำหน่ายยินยอมให้หักค่าธรรมเนียมในการโอนเงินจากค่าสินค้าตามอัตราที่ธนาคารกำหนดขึ้น
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-12" align="left" style="font-size: 16px;"><b>หมายเหตุ : เอกสารประกอบการเปิดหน้าบัญชี</b></div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-12" style="font-size: 16px;">
										<div class="form-group radio" style="margin-left: 5px; height: 25px; padding: 0px;">
	                                        <div class="col-xs-12">
	                                           	<input type="radio" name="legal_entity" value="true" <c:if test="${command.legal_entity}">checked</c:if>><u>นิติบุคคล</u>
											</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_company_registration" value="${command.copy_company_registration}"> สำเนาหนังสือรับรองการจดทะเบียนห้างหุ้นส่วน/บริษัท (อายุไม่เกิน 2 เดือน)</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_company_certificate" value="${command.copy_company_certificate}"> สำเนาใบสำคัญแสดงการจดทะเบียนห้างหุ้นส่วน / บริษัท</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_vat_certificate" value="${command.copy_vat_certificate}"> สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20)</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="power_of_attorney" value="${command.power_of_attorney}"> หนังสือมอบอำนาจพร้อมอากรแสตมป์กรณีที่ผู้มีอำนาจไม่สามารถมาดำเนินการได้ด้วยตนเอง</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="house_registration_authorized" value="${command.house_registration_authorized}"> สำเนาทะเบียนบ้านของผู้มีอำนาจลงนาม</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_bank_statement" value="${command.copy_bank_statement}"> สำเนาสมุดบัญชีเงินฝาก</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_identification_authorized" value="${command.copy_identification_authorized}"> สำเนาบัตรประชาชนของผู้มีอำนาจลงนาม</div>
											<div class="col-xs-12">
												<div class="col-xs-1" style="padding-left: 0px;padding-right: 0px;">
													<input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="other_specify" value="${command.other_specify}"> อื่น ๆ ระบุ
												</div>
												<div class="col-xs-11" style="padding-left: 5px;padding-right: 0px;">
													<input type="text" class="form-control" style="height: 25px; width: 300px;" <c:if test="${!command.legal_entity}">disabled</c:if> name="other_specify_remark" value="${command.other_specify_remark}">
												</div>
											</div>
											<div class="col-xs-12">
												<br>
												<p><b>หมายเหตุ</b> สำเนาหนังสือรับรองการจดทะเบียนห้างหุ้นส่วน/บริษัท  สำเนาใบสำคัญแสดงการจดทะเบียน ห้างหุ้นส่วน/บริษัท  และสำเนาใบทะเบียนภาษีมูลค่าเพิ่ม ต้องได้รับรองสำเนาจากผู้มีอำนาจลงนามตามหนังสือจดทะเบียน บริษัท  พร้อมประทับตราบริษัท</p>
											</div>
	                                        <div class="col-xs-12">
	                                        	<br>
	                                           	<input type="radio" name="legal_entity" value="false" <c:if test="${!command.legal_entity}">checked</c:if>><u>บุคคลธรรมดา</u>
											</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_id_crad" value="${command.copy_id_crad}"> สำเนาบัตรประชาชน</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_tax" value="${command.copy_tax}"> สำเนาบัตรประจำตัวผู้เสียภาษี</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_commercial_certificate" value="${command.copy_commercial_certificate}"> สำเนาใบทะเบีนพาณิชย์  กรณีได้จดทะเบียนพาณิชย์</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="house_registration" value="${command.house_registration}"> สำเนาทะเบียนบ้าน</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_bank_statement_individual" value="${command.copy_bank_statement_individual}"> สำเนาสมุดบัญชีเงินฝาก</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_vat_certificate_individual" value="${command.copy_vat_certificate_individual}"> สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20) ( กรณีจดทะเบียนภาษีมูลค่าเพิ่ม )<br><br></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="box-body">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">รายการสินค้า</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="table-responsive">
						<table id="myTable" class="table table-bordered" style="width: 2500px;max-width: none;">
							<thead style="font-size: 14px;">
								<tr class="bg-light-blue disabled ">
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">รหัสสินค้า</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">รหัสบาร์โคด</th>
									<th style="width: 200px;text-align: center;vertical-align: middle;" rowspan="2">ชื่อสินค้า</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">ขนาดบรรจุ</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" colspan="2">หน่วยหลัก/ย่อย</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">ราคาขาย</th>
									<th style="width: 150px;text-align: center;vertical-align: middle;" colspan="2">ราคาทุน</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" colspan="2">GP</th>
									<th style="width: 150px;text-align: center;vertical-align: middle;" rowspan="2">หมวดสินค้า</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">รหัสผู้จำหน่าย</th>
									<th style="width: 200px;text-align: center;vertical-align: middle;" rowspan="2">ชื่อผู้จำหน่าย</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">ยี่ห้อ</th>
									<th style="width: 200px;text-align: center;vertical-align: middle;" colspan="2">เงื่อนไขทางการค้า</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">สาขาที่ส่งสินค้า</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">กำหนดส่งสินค้า</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2"></th>
								</tr>
								<tr class="bg-light-blue disabled ">
									<th style="text-align: center;vertical-align: middle;">หีบ</th>
									<th style="text-align: center;vertical-align: middle;">มัด</th>
									<th style="text-align: center;vertical-align: middle;">ทุนหลัก</th>
									<th style="text-align: center;vertical-align: middle;">ทุนย่อย</th>
									<th style="text-align: center;vertical-align: middle;">(บาท)</th>
									<th style="text-align: center;vertical-align: middle;">(%)</th>
									<th style="text-align: center;vertical-align: middle;">รับคืน</th>
									<th style="text-align: center;vertical-align: middle;">ไม่รับคืน</th>
								</tr>
							</thead>
							<tbody>
								<tr id="row_1">
									<td class="text-center"><input name="product_code_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="product_barcode_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="product_name_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="contain_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="chest_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="bundle_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="sale_price_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="main_capital_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="sub_capital_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="baht_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="percent_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="product_category_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="supplier_code_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="supplier_name_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="brand_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="is_take_back_1" type="radio" ></td>
									<td class="text-center"><input name="is_take_back_1" type="radio" ></td>
									<td class="text-center"><input name="delivery_branch_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="delivery_schedule_1" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center">
										<span class="badge bg-green detail" style="cursor: pointer;" data="ADD" data_id="1" onclick="add()">เพิ่ม</span> 
									</td>
								</tr>
							</tbody>
						</table>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			  <div class="box-footer">
				<button type="submit" class="btn btn-default">Cancel</button>
				<button type="submit" class="btn btn-info pull-right">Save</button>
			  </div>
		  </div>
		  <!-- /.box-footer -->
		</form>
	  

    </section>
	<!-- /.modal -->
	<script>
		$(document).ready(function() {
			$('input:radio[name=legal_entity]').change(function () {
				 if ($('input:radio[name=legal_entity]:checked').val() == 'true') {
					 $('input[name=copy_company_registration]').removeAttr("disabled");
					 $('input[name=copy_company_certificate]').removeAttr("disabled");
					 $('input[name=copy_vat_certificate]').removeAttr("disabled");
					 $('input[name=power_of_attorney]').removeAttr("disabled");
					 $('input[name=house_registration_authorized]').removeAttr("disabled");
					 $('input[name=copy_bank_statement]').removeAttr("disabled");
					 $('input[name=copy_identification_authorized]').removeAttr("disabled");
					 $('input[name=other_specify]').removeAttr("disabled");
					 $('input[name=other_specify_remark]').removeAttr("disabled");
					 
					 $('input[name=copy_id_crad]').attr("disabled", true);
					 $('input[name=copy_tax]').attr("disabled", true);
					 $('input[name=copy_commercial_certificate]').attr("disabled", true);
					 $('input[name=house_registration]').attr("disabled", true);
					 $('input[name=copy_bank_statement_individual]').attr("disabled", true);
					 $('input[name=copy_vat_certificate_individual]').attr("disabled", true);
					 
					 $('input[name=copy_id_crad]').prop("checked", false);
					 $('input[name=copy_tax]').prop("checked", false);
					 $('input[name=copy_commercial_certificate]').prop("checked", false);
					 $('input[name=house_registration]').prop("checked", false);
					 $('input[name=copy_bank_statement_individual]').prop("checked", false);
					 $('input[name=copy_vat_certificate_individual]').prop("checked", false);
				 }else{
					$('input[name=copy_company_registration]').attr("disabled", true);
					 $('input[name=copy_company_certificate]').attr("disabled", true);
					 $('input[name=copy_vat_certificate]').attr("disabled", true);
					 $('input[name=power_of_attorney]').attr("disabled", true);
					 $('input[name=house_registration_authorized]').attr("disabled", true);
					 $('input[name=copy_bank_statement]').attr("disabled", true);
					 $('input[name=copy_identification_authorized]').attr("disabled", true);
					 $('input[name=other_specify]').attr("disabled", true);
					 $('input[name=other_specify_remark]').attr("disabled", true);
					 
					$('input[name=copy_company_registration]').prop("checked", false);
					 $('input[name=copy_company_certificate]').prop("checked", false);
					 $('input[name=copy_vat_certificate]').prop("checked", false);
					 $('input[name=power_of_attorney]').prop("checked", false);
					 $('input[name=house_registration_authorized]').prop("checked", false);
					 $('input[name=copy_bank_statement]').prop("checked", false);
					 $('input[name=copy_identification_authorized]').prop("checked", false);
					 $('input[name=other_specify]').prop("checked", false);
					 $('input[name=other_specify_remark]').prop("checked", false);
					 
					$('input[name=copy_id_crad]').removeAttr("disabled");
					 $('input[name=copy_tax]').removeAttr("disabled");
					 $('input[name=copy_commercial_certificate]').removeAttr("disabled");
					 $('input[name=house_registration]').removeAttr("disabled");
					 $('input[name=copy_bank_statement_individual]').removeAttr("disabled");
					 $('input[name=copy_vat_certificate_individual]').removeAttr("disabled");
				 }
			});
			
			$('input[name=copy_company_registration]').change(function () {
				if($('input[name=copy_company_registration]').is( ":checked" )) {
					$('input[name=copy_company_registration]').val('true');
				}else{
					$('input[name=copy_company_registration]').val('false');
				}
			});
			
			$('input[name=copy_company_certificate]').change(function () {
				if($('input[name=copy_company_certificate]').is( ":checked" )) {
					$('input[name=copy_company_certificate]').val('true');
				}else{
					$('input[name=copy_company_certificate]').val('false');
				}
			});
			
			$('input[name=copy_vat_certificate]').change(function () {
				if($('input[name=copy_vat_certificate]').is( ":checked" )) {
					$('input[name=copy_vat_certificate]').val('true');
				}else{
					$('input[name=copy_vat_certificate]').val('false');
				}
			});
			
			$('input[name=power_of_attorney]').change(function () {
				if($('input[name=power_of_attorney]').is( ":checked" )) {
					$('input[name=power_of_attorney]').val('true');
				}else{
					$('input[name=power_of_attorney]').val('false');
				}
			});
			
			$('input[name=house_registration_authorized]').change(function () {
				if($('input[name=house_registration_authorized]').is( ":checked" )) {
					$('input[name=house_registration_authorized]').val('true');
				}else{
					$('input[name=house_registration_authorized]').val('false');
				}
			});
			
			$('input[name=copy_bank_statement]').change(function () {
				if($('input[name=copy_bank_statement]').is( ":checked" )) {
					$('input[name=copy_bank_statement]').val('true');
				}else{
					$('input[name=copy_bank_statement]').val('false');
				}
			});
			
			$('input[name=copy_identification_authorized]').change(function () {
				if($('input[name=copy_identification_authorized]').is( ":checked" )) {
					$('input[name=copy_identification_authorized]').val('true');
				}else{
					$('input[name=copy_identification_authorized]').val('false');
				}
			});
			
			$('input[name=other_specify]').change(function () {
				if($('input[name=other_specify]').is( ":checked" )) {
					$('input[name=other_specify]').val('true');
				}else{
					$('input[name=other_specify]').val('false');
				}
			});
			
			$('input[name=copy_id_crad]').change(function () {
				if($('input[name=copy_id_crad]').is( ":checked" )) {
					$('input[name=copy_id_crad]').val('true');
				}else{
					$('input[name=copy_id_crad]').val('false');
				}
			});
			
			$('input[name=copy_tax]').change(function () {
				if($('input[name=copy_tax]').is( ":checked" )) {
					$('input[name=copy_tax]').val('true');
				}else{
					$('input[name=copy_tax]').val('false');
				}
			});
			
			$('input[name=copy_commercial_certificate]').change(function () {
				if($('input[name=copy_commercial_certificate]').is( ":checked" )) {
					$('input[name=copy_commercial_certificate]').val('true');
				}else{
					$('input[name=copy_commercial_certificate]').val('false');
				}
			});
			
			$('input[name=house_registration]').change(function () {
				if($('input[name=house_registration]').is( ":checked" )) {
					$('input[name=house_registration]').val('true');
				}else{
					$('input[name=house_registration]').val('false');
				}
			});
			
			$('input[name=copy_bank_statement_individual]').change(function () {
				if($('input[name=copy_bank_statement_individual]').is( ":checked" )) {
					$('input[name=copy_bank_statement_individual]').val('true');
				}else{
					$('input[name=copy_bank_statement_individual]').val('false');
				}
			});
			
			$('input[name=copy_vat_certificate_individual]').change(function () {
				if($('input[name=copy_vat_certificate_individual]').is( ":checked" )) {
					$('input[name=copy_vat_certificate_individual]').val('true');
				}else{
					$('input[name=copy_vat_certificate_individual]').val('false');
				}
			});
			
			$(".detail").click(function(){
				
			});
		});
		
		var loop = 2;
		function add(){
			var html = '';
			html += '<tr id="row_'+loop+'">';
			html += '<td class="text-center"><input name="product_code_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="product_barcode_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="product_name_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="contain_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="chest_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="bundle_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="sale_price_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="main_capital_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="sub_capital_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="baht_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="percent_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="product_category_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="supplier_code_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="supplier_name_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="brand_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="is_take_back_'+loop+'" type="radio" ></td>';
			html += '<td class="text-center"><input name="is_take_back_'+loop+'" type="radio" ></td>';
			html += '<td class="text-center"><input name="delivery_branch_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center"><input name="delivery_schedule_'+loop+'" type="text" class="form-control" style="height: 25px;" value=""></td>';
			html += '<td class="text-center">';
			html += '<span class="badge bg-green detail" style="cursor: pointer;" data="ADD" data_id="1" onclick="add()">เพิ่ม</span> ';
			var row_id = "'row_"+loop+"'";
			html += '<span class="badge bg-red detail" style="cursor: pointer;" data="DELETE" data_id="1" onclick="deleteRow('+row_id+')">ลบ</span>';
			html += '</td>';
			html += '</tr>';
			
			$('#last_row').val(loop);
			loop++;
			
			$('#myTable tr:last').after(html);
		}
		
		function deleteRow(rowid)  
		{   
		    var row = document.getElementById(rowid);
		    row.parentNode.removeChild(row);
		}
	</script>
    
<%@ include file="../../footer.jsp" %>