<%@ include file="../../header.jsp" %>  
<%@ page language="java" contentType="text/html;charset=UTF-8" %>  
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
    
    <section class="content-header">
      <h1>สร้างใบขอเปิดบัญชีผู้จำหน่าย</h1>
    </section>

    <!-- Main content -->
    <section class="content">
		<form class="form-horizontal" action="${pageContext.request.contextPath}/add_edit_request_vender.htm" method="post">
			<div>
				<input name="timeadd_date" type="hidden"  value="${command.timeadd.date}">
				<input name="timeadd_time" type="hidden"  value="${command.timeadd.time}">
				<input name="timeadd_user" type="hidden"  value="${command.timeadd.user}">
				<input name="timeupd_date" type="hidden"  value="${command.timeupd.date}">
				<input name="timeupd_time" type="hidden"  value="${command.timeupd.time}">
				<input name="timeupd_user" type="hidden"  value="${command.timeupd.user}">
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
	                                           	<input type="radio" name="optionsRadios4" checked><u>นิติบุคคล</u>
											</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาหนังสือรับรองการจดทะเบียนห้างหุ้นส่วน/บริษัท (อายุไม่เกิน 2 เดือน)</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาใบสำคัญแสดงการจดทะเบียนห้างหุ้นส่วน / บริษัท</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20)</div>
											<div class="col-xs-12"><input type="checkbox"> หนังสือมอบอำนาจพร้อมอากรแสตมป์กรณีที่ผู้มีอำนาจไม่สามารถมาดำเนินการได้ด้วยตนเอง</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาทะเบียนบ้านของผู้มีอำนาจลงนาม</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาสมุดบัญชีเงินฝาก</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาบัตรประชาชนของผู้มีอำนาจลงนาม</div>
											<div class="col-xs-12">
												<div class="col-xs-1" style="padding-left: 0px;padding-right: 0px;">
													<input type="checkbox"> อื่น ๆ ระบุ
												</div>
												<div class="col-xs-11" style="padding-left: 5px;padding-right: 0px;">
													<input name="" type="text" class="form-control" style="height: 25px; width: 300px;" value="">
												</div>
											</div>
											<div class="col-xs-12">
												<br>
												<p><b>หมายเหตุ</b> สำเนาหนังสือรับรองการจดทะเบียนห้างหุ้นส่วน/บริษัท  สำเนาใบสำคัญแสดงการจดทะเบียน ห้างหุ้นส่วน/บริษัท  และสำเนาใบทะเบียนภาษีมูลค่าเพิ่ม ต้องได้รับรองสำเนาจากผู้มีอำนาจลงนามตามหนังสือจดทะเบียน บริษัท  พร้อมประทับตราบริษัท</p>
											</div>
	                                        <div class="col-xs-12">
	                                        	<br>
	                                           	<input type="radio" name="optionsRadios4"><u>บุคคลธรรมดา</u>
											</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาบัตรประชาชน</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาบัตรประจำตัวผู้เสียภาษี</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาใบทะเบีนพาณิชย์  กรณีได้จดทะเบียนพาณิชย์</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาทะเบียนบ้าน</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาสมุดบัญชีเงินฝาก</div>
											<div class="col-xs-12"><input type="checkbox"> สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20) ( กรณีจดทะเบียนภาษีมูลค่าเพิ่ม )<br><br></div>
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
						<table class="table table-bordered" style="width: 2500px;max-width: none;">
							<thead style="font-size: 14px;">
								<tr class="bg-light-blue disabled ">
									<th style="width: 50px;text-align: center;vertical-align: middle;" rowspan="2">ลำดับ</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">รหัสสินค้า</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">รหัสบาร์โคด</th>
									<th style="width: 200px;text-align: center;vertical-align: middle;" rowspan="2">ชื่อสินค้า</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">ขนาดบรรจุ</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" colspan="2">หน่วยหลัก/ย่อย</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">ราคาขาย</th>
									<th style="width: 150px;text-align: center;vertical-align: middle;" colspan="2">ราคาทุน</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" colspan="2">GP</th>
									<th style="width: 100px;text-align: center;vertical-align: middle;" rowspan="2">หมวดสินค้า</th>
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
								<tr>
									<td style="text-align: center;">1.</td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="checkbox" ></td>
									<td class="text-center"><input name="" type="checkbox" ></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><input name="" type="text" class="form-control" style="height: 25px;" value=""></td>
									<td class="text-center"><a href="#"><span class="badge bg-green">เพิ่ม</span></a> <a href="#"><span class="badge bg-red">ลบ</span></a></td>
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
			$('input:radio[name=vat_registration]').change(function () {
				 if ($('input:radio[name=vat_registration]:checked').val() == 'true') {
					 
				 }else{
					 
				 }
			});
			
			$('input:radio[name=vat_separately]').change(function () {
				 if ($('input:radio[name=vat_separately]:checked').val() == 'true') {
					 
				 }else{
					 
				 }
			});
		});
	</script>
    
<%@ include file="../../footer.jsp" %>