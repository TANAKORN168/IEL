<%@ include file="../../headerInclude.jsp" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
    
    <section class="content-header">
      <h1><u>สร้างใบขอเปิดบัญชีผู้จำหน่าย</u></h1>
    </section>

    <!-- Main content -->
    <section class="content">
		<form id="my_form" class="form-horizontal" action="${pageContext.request.contextPath}/add_edit_request_vender.htm" method="post" modelAttribute="command">
	    	<div>
	    		<input name="id" type="hidden"  value="${command.id}">
				 <input name="timeadd_date" type="hidden"  value="${command.timeadd_date}">
				 <input name="timeadd_time" type="hidden"  value="${command.timeadd_time}">
				 <input name="timeadd_user" type="hidden"  value="${command.timeadd_user}">
				 <input name="timeupd_date" type="hidden"  value="${command.timeupd_date}">
				 <input name="timeupd_time" type="hidden"  value="${command.timeupd_time}">
				 <input name="timeupd_user" type="hidden"  value="${command.timeupd_user}">
				 <input name="status_code" type="hidden"  value="${command.status_code}">
				 <input name="status_name" type="hidden"  value="${command.status_name}">
				 <input name="request_vender_date" type="hidden"  value="${command.request_vender_date}">
				 
				 <input id="last_row" name="last_row" type="hidden"  value="1">
				 <input id="select_id" type="hidden"  value="">
				 <input id="select_level" type="hidden"  value="">
				 <input id="select_title" type="hidden"  value="">
				 <input id="select_users_id" type="hidden"  value="">
				 <input id="select_status_code" type="hidden"  value="">
				 <input id="last_approve" name="last_approve" type="hidden"  value="1">
			</div>
			<div class="row">
				<div class="col-lg-12 col-xs-12">
							<div class="container" style="width: 100%">
						       <ul class="progressbar">
						           <c:forEach var="status_info" items="${command.list_status}"> 
						           		<c:choose>
										  <c:when test="${status_info.status_code < command.status_code}">
										  	<li class="active" style="width: 20%">${status_info.status_code} ${status_info.status_name}</li>
										  </c:when>
										  <c:when test="${status_info.status_code == command.status_code}">
										  	<li class="select" style="width: 20%">${status_info.status_code} ${status_info.status_name}</li>
										  </c:when>
										  <c:otherwise>
										    	<li style="width: 20%">${status_info.status_code} ${status_info.status_name}</li>
										  </c:otherwise>
										</c:choose>
					                 </c:forEach>
						       </ul>
						   </div>
					
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
									<div class="col-md-4" style="font-size: 16px;"><b>เลขที่ใบขอ</b> ${command.request_vender_code}</div>
									<div class="col-md-4"></div>
									<div class="col-md-4" style="font-size: 16px;">
										<div class="col-md-5"  style="padding-right: 0px;"><b>รหัสผู้จำหน่าย</b></div>
										<div class="col-md-7"  style="padding-left: 0px;">&nbsp&nbsp${command.vender_code}</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-md-3" style="font-size: 16px;"><b>วันที่</b> ${command.request_vender_date}</div>
									<div class="col-md-5"></div>
									<div class="col-md-4" style="font-size: 16px;">
										<div class="col-md-5"  style="padding-right: 0px;"><b>รหัสอ้างอิง</b></div> 
										<div class="col-md-7"  style="padding-left: 0px;"><input name="vender_ref_code" type="text" class="form-control" style="height: 25px; width: 150px;" value="${command.vender_ref_code}"></div>
									</div>
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
									<div class="col-md-12" align="left" style="font-size: 16px;"><u>สำหรับค่าสินค้าจะโอนชำระผ่านบัญชีธนาคาร  xxxxxxxxxxx  จำกัด  (มหาชน)</u></div>
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
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_company_registration" value="${command.copy_company_registration}" <c:if test="${command.copy_company_registration}">checked</c:if>> สำเนาหนังสือรับรองการจดทะเบียนห้างหุ้นส่วน/บริษัท (อายุไม่เกิน 2 เดือน)</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_company_certificate" value="${command.copy_company_certificate}" <c:if test="${command.copy_company_certificate}">checked</c:if>> สำเนาใบสำคัญแสดงการจดทะเบียนห้างหุ้นส่วน / บริษัท</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_vat_certificate" value="${command.copy_vat_certificate}" <c:if test="${command.copy_vat_certificate}">checked</c:if>> สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20)</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="power_of_attorney" value="${command.power_of_attorney}" <c:if test="${command.power_of_attorney}">checked</c:if>> หนังสือมอบอำนาจพร้อมอากรแสตมป์กรณีที่ผู้มีอำนาจไม่สามารถมาดำเนินการได้ด้วยตนเอง</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="house_registration_authorized" value="${command.house_registration_authorized}" <c:if test="${command.house_registration_authorized}">checked</c:if>> สำเนาทะเบียนบ้านของผู้มีอำนาจลงนาม</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_bank_statement" value="${command.copy_bank_statement}" <c:if test="${command.copy_bank_statement}">checked</c:if>> สำเนาสมุดบัญชีเงินฝาก</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="copy_identification_authorized" value="${command.copy_identification_authorized}" <c:if test="${command.copy_identification_authorized}">checked</c:if>> สำเนาบัตรประชาชนของผู้มีอำนาจลงนาม</div>
											<div class="col-xs-12">
												<div class="col-xs-1" style="padding-left: 0px;padding-right: 0px;">
													<input type="checkbox" <c:if test="${!command.legal_entity}">disabled</c:if> name="other_specify" value="${command.other_specify}" <c:if test="${command.other_specify}">checked</c:if>> อื่น ๆ ระบุ
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
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_id_crad" value="${command.copy_id_crad}" <c:if test="${command.copy_id_crad}">checked</c:if>> สำเนาบัตรประชาชน</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_tax" value="${command.copy_tax}" <c:if test="${command.copy_tax}">checked</c:if>> สำเนาบัตรประจำตัวผู้เสียภาษี</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_commercial_certificate" value="${command.copy_commercial_certificate}" <c:if test="${command.copy_commercial_certificate}">checked</c:if>> สำเนาใบทะเบีนพาณิชย์  กรณีได้จดทะเบียนพาณิชย์</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="house_registration" value="${command.house_registration}" <c:if test="${command.house_registration}">checked</c:if>> สำเนาทะเบียนบ้าน</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_bank_statement_individual" value="${command.copy_bank_statement_individual}" <c:if test="${command.copy_bank_statement_individual}">checked</c:if>> สำเนาสมุดบัญชีเงินฝาก</div>
											<div class="col-xs-12"><input type="checkbox" <c:if test="${command.legal_entity}">disabled</c:if> name="copy_vat_certificate_individual" value="${command.copy_vat_certificate_individual}" <c:if test="${command.copy_vat_certificate_individual}">checked</c:if>> สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20) ( กรณีจดทะเบียนภาษีมูลค่าเพิ่ม )<br><br></div>
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
							</table>
						</div>
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
				<!-- /.box-body -->
			  <div class="box-footer">
			  	<a href="list_request_vender.htm" class="btn btn-default"">Cancel</a>
				<button type="submit" class="btn btn-info pull-right">Save</button>
			  </div>
		  </div>
		  <!-- /.box-footer -->
		</form>
	  
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
	<!-- /.modal -->
	<script>
		$(document).ready(function() {
			
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
			
			var list_detail = ${list_detail};
			$.each(list_detail, function( index, detail ) {
				add(detail.id,detail.product_code,detail.product_barcode,detail.product_name,detail.contain,detail.chest,detail.bundle,
						detail.sale_price,detail.main_capital,detail.sub_capital,detail.baht,detail.percent,detail.product_category,
						detail.supplier_code,detail.supplier_name,detail.brand,detail.take_back,detail.delivery_branch,detail.delivery_schedule);
			});
			
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

			$('#popup_approve').on('show.bs.modal', function () {
				var objFormJSP = new Object();
				var level = $("#select_level").val();
				objFormJSP.level = level;
				$.ajax({
					url: "${pageContext.request.contextPath}/list_approve.htm",
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
			
			$("#my_form").submit(function(e) {
			    if(!confirm("คุณต้องการที่จะบันทึก ?")){
			         e.preventDefault();
			    }
			}); 
			
			
		});
		
		var loop = 1;
		
		function add_empty(){
			add(0,'','','','','','',0.00,0.00,0.00,0.00,0.00,'','','','',true,'','');
		}
		
		function add(id, product_code,product_barcode,product_name,contain,chest,bundle,
				sale_price,main_capital,sub_capital,baht,percent,product_category,supplier_code,
				supplier_name,brand,take_back,delivery_branch,delivery_schedule){
			var html = '';
			html += '<tr id="row_'+loop+'">';
			
			html += '<input name="id_'+loop+'" type="hidden"  value="'+id+'">';
			
			html += '<td class="text-center"><input name="product_code_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+product_code+'"></td>';
			html += '<td class="text-center"><input name="product_barcode_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+product_barcode+'"></td>';
			html += '<td class="text-center"><input name="product_name_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+product_name+'"></td>';
			html += '<td class="text-center"><input name="contain_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+contain+'"></td>';
			html += '<td class="text-center"><input name="chest_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+chest+'"></td>';
			html += '<td class="text-center"><input name="bundle_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+bundle+'"></td>';
			html += '<td class="text-center"><input name="sale_price_'+loop+'" type="text" class="form-control" style="height: 25px;text-align:right;" value="'+sale_price+'"></td>';
			html += '<td class="text-center"><input name="main_capital_'+loop+'" type="text" class="form-control" style="height: 25px;text-align:right;" value="'+main_capital+'"></td>';
			html += '<td class="text-center"><input name="sub_capital_'+loop+'" type="text" class="form-control" style="height: 25px;text-align:right;" value="'+sub_capital+'"></td>';
			html += '<td class="text-center"><input name="baht_'+loop+'" type="text" class="form-control" style="height: 25px;text-align:right;" value="'+baht+'"></td>';
			html += '<td class="text-center"><input name="percent_'+loop+'" type="text" class="form-control" style="height: 25px;text-align:right;" value="'+percent+'"></td>';
			html += '<td class="text-center"><input name="product_category_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+product_category+'"></td>';
			html += '<td class="text-center"><input name="supplier_code_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+supplier_code+'"></td>';
			html += '<td class="text-center"><input name="supplier_name_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+supplier_name+'"></td>';
			html += '<td class="text-center"><input name="brand_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+brand+'"></td>';
			
			if(take_back){
				html += '<td class="text-center"><input name="take_back_'+loop+'" type="radio" value="true" checked="checked"></td>';
				html += '<td class="text-center"><input name="take_back_'+loop+'" type="radio" value="false"></td>';
			}else{
				html += '<td class="text-center"><input name="take_back_'+loop+'" type="radio" value="true"></td>';
				html += '<td class="text-center"><input name="take_back_'+loop+'" type="radio" value="false" checked="checked"></td>';
			}
			
			html += '<td class="text-center"><input name="delivery_branch_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+delivery_branch+'"></td>';
			html += '<td class="text-center"><input name="delivery_schedule_'+loop+'" type="text" class="form-control" style="height: 25px;" value="'+delivery_schedule+'"></td>';
			html += '<td class="text-center">';
			html += '<span class="badge bg-green detail" style="cursor: pointer;" data="ADD" data_id="1" onclick="add_empty()">เพิ่ม</span> ';
			
			if(loop > 1){
				var row_id = "'row_"+loop+"'";
				html += '<span class="badge bg-red detail" style="cursor: pointer;" data="DELETE" data_id="1" onclick="deleteRow('+row_id+')">ลบ</span>';
			}
			
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
		
		
	</script>
    
<%@ include file="../../footer.jsp" %>