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
      <h1><u>ข้อมูลผู้ขาย</h1>
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
									<label>รหัสผู้ขาย</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>คำนำหน้าชื่อ</label>
									<select name="" class="form-control">
										<option value="">บริษัท</option>
										<option value="">คณะบุคคล</option>
										<option value="">คุณ</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ชื่อผู้ขาย</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ชื่อย่อ</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>เลขประจำตัวผู้เสียภาษี</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ประเภทภาษี (1=บุคคลธรรมดา 2=นิติบุคคล)</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ประเภทผู้ขาย</label>
									<select name="" class="form-control">
										<c:forEach var="obj" items="${list_vendor_type}" varStatus="current"> 
											<option value="${obj.id}">${obj.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ที่อยู่</label>
									<textarea class="form-control" rows="3"></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>โทร</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>Email</label>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
										<input type="email" class="form-control" placeholder="Email">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>Fax</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>Office Hour</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="col-xs-6" style="padding-left: 0px;">
									<div class="form-group">
										<label>VAT (%)</label>
										<input type="text" class="form-control" id="">
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<label>VAT (1 = Exc. 2 = Inc.)</label>
										<input type="text" class="form-control" id="">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="col-xs-6" style="padding-left: 0px;">
									<div class="form-group">
										<label>วงเงินการค้า</label>
										<input type="text" class="form-control" id="">
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<label>จำนวนวันเครดิต</label>
										<input type="text" class="form-control" id="">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>การชำระเงิน</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>Job Referance</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<input type="checkbox" id="">
									<label>ยินยอมให้เข้า Visit site</label>
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
							<h3 class="box-title">ส่วนลด</h3>
			
							<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-2" style="padding: 0px;">
										<label style="padding-top: 45%;">มากกว่า</label>
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 30%;">บาท</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 25%;">หน่วย</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 0px;">
										<label style="padding-top: 45%;">รับส่วนลด</label>
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 30%;">บาท</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 45%;">%</label>
										<input type="text" class="form-control" id="">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-2" style="padding: 0px;">
										<label style="padding-top: 45%;">มากกว่า</label>
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 30%;">บาท</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 25%;">หน่วย</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 0px;">
										<label style="padding-top: 45%;">รับส่วนลด</label>
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 30%;">บาท</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 45%;">%</label>
										<input type="text" class="form-control" id="">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-2" style="padding: 0px;">
										<label style="padding-top: 45%;">มากกว่า</label>
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 30%;">บาท</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 25%;">หน่วย</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 0px;">
										<label style="padding-top: 45%;">รับส่วนลด</label>
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 30%;">บาท</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 45%;">%</label>
										<input type="text" class="form-control" id="">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-2" style="padding: 0px;">
										<label style="padding-top: 45%;">มากกว่า</label>
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 30%;">บาท</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 25%;">หน่วย</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 0px;">
										<label style="padding-top: 45%;">รับส่วนลด</label>
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 30%;">บาท</label>
										<input type="text" class="form-control" id="">
									</div>
									<div class="col-xs-2" style="padding: 5px;">
										<label style="padding-left: 45%;">%</label>
										<input type="text" class="form-control" id="">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">ผู้ติดต่อที่ 1</h3>
			
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
											<label>ชื่อ</label>
											<input type="text" class="form-control" id="">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="form-group">
											<label>ตำแหน่ง</label>
											<div class="pull-right">
												<input type="checkbox">
												<label>อำนาจอนุมัติ</label>
											</div>
											<input type="text" class="form-control" id="">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="col-xs-6" style="padding: 0px;">
											<div class="form-group">
												<label>โทร</label>
												<div class="input-group">
													<div class="input-group-addon">
													<i class="fa fa-phone"></i>
													</div>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="col-xs-6" style="padding: 0px 5px;padding-right: 0px;">
											<div class="form-group">
												<label>Email</label>
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
													<input type="email" class="form-control" placeholder="Email">
												</div>
											</div>
										</div>
									</div>
								</div>
						</div>
					</div>
					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">ผู้ติดต่อที่ 2</h3>
			
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
											<label>ชื่อ</label>
											<input type="text" class="form-control" id="">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="form-group">
											<label>ตำแหน่ง</label>
											<div class="pull-right">
												<input type="checkbox">
												<label>อำนาจอนุมัติ</label>
											</div>
											<input type="text" class="form-control" id="">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="col-xs-6" style="padding: 0px;">
											<div class="form-group">
												<label>โทร</label>
												<div class="input-group">
													<div class="input-group-addon">
													<i class="fa fa-phone"></i>
													</div>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="col-xs-6" style="padding: 0px 5px;padding-right: 0px;">
											<div class="form-group">
												<label>Email</label>
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
													<input type="email" class="form-control" placeholder="Email">
												</div>
											</div>
										</div>
									</div>
								</div>
						</div>
					</div>
					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">ผู้ติดต่อที่ 3</h3>
			
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
											<label>ชื่อ</label>
											<input type="text" class="form-control" id="">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="form-group">
											<label>ตำแหน่ง</label>
											<div class="pull-right">
												<input type="checkbox">
												<label>อำนาจอนุมัติ</label>
											</div>
											<input type="text" class="form-control" id="">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="col-xs-6" style="padding: 0px;">
											<div class="form-group">
												<label>โทร</label>
												<div class="input-group">
													<div class="input-group-addon">
													<i class="fa fa-phone"></i>
													</div>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
										<div class="col-xs-6" style="padding: 0px 5px;padding-right: 0px;">
											<div class="form-group">
												<label>Email</label>
												<div class="input-group">
													<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
													<input type="email" class="form-control" placeholder="Email">
												</div>
											</div>
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
								<a href="list_vendor.htm" class="btn btn-default">Cancel</a>
								<button type="submit" class="btn btn-info pull-right">Save</button>
							</div>
						</c:when>
					</c:choose>
				</div>
			</div>

		</div>
	</section>
	
	<script type="text/javascript">

		$(document).ready(function() {

			

		});

	</script>

<%
if(!"info".equals(view)){
%>
	<%@ include file="../footer.jsp" %>
<%
}
%> 
