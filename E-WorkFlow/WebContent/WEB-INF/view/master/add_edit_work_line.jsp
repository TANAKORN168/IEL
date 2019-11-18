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
      <h1><u>ข้อมูลสายงาน</h1>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header">
						<div class="row">
							<div class="col-xs-5">
								<div class="form-group">
									<label>บริษัท</label>
									<select name="" class="form-control">
										<c:forEach var="obj" items="${list_company}" varStatus="current"> 
											<option value="${obj.id}">${obj.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-5">
								<div class="form-group">
									<label>รหัสสายงาน</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-5">
								<div class="form-group">
									<label>ชื่อสายงาน</label>
									<input type="text" class="form-control" id="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-5">
								<div class="form-group">
									<label>งบประมาณ</label>
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
				<c:choose>
					<c:when test="${view != 'info'}">
						<div class="box-footer">
							<a href="list_work_line.htm" class="btn btn-default">Cancel</a>
							<button type="submit" class="btn btn-info pull-right">Save</button>
						</div>
					</c:when>
				</c:choose>
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
