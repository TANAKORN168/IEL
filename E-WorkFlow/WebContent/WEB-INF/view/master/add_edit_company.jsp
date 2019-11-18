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
      <h1><u>ข้อมูลบริษัท</h1>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-6">
				<div class="box box-primary">
					<div class="box-header">
						<div class="col-xs-12">
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>รหัสบริษัท</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group">
									<label>ชื่อบริษัท</label>
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
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">รูป Logo</h3>
			
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
				</div>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<c:choose>
						<c:when test="${view != 'info'}">
							<div class="box-footer">
								<a href="list_company.htm" class="btn btn-default">Cancel</a>
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
