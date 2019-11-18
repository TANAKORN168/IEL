<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script src="${pageContext.request.contextPath}/assets/components/pdf/pdfobject.js"></script>
<style>
	.pdfobject-container { height: 30rem; border: 1rem solid rgba(0,0,0,.1); }
</style>

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>รายการอนุมัติ <small>ณ วันที่ ${current_date}</small></h1>
      <ol class="breadcrumb">
        <li><a href="approve_list.htm"><i class="fa fa-dashboard"></i> รายการอนุมัติ</a></li>
        <li><a href="approve_sub_list.htm">รายการอนุมัติแยกตามกลุ่ม</a></li>
        <li>การอนุมัติ</li>
      </ol>
    </section>
    <hr/>
    <section class="content">
		<form id="my_form" class="form-horizontal" action="approve.htm" method="post" modelAttribute="command">
    		<div class="row">
				<div class="col-xs-12">
					<div class="box-body" >
						<div class="box box-primary">
							<div class="row" align="center" >
								<span style="vertical-align: top;"><h4>แสดงความเห็น</h4></span>
								<textarea name="message" rows="5" cols="100"></textarea>
							</div>
							<div class="row" style="margin: 10px;" align="center" >
								<input name="id" type="hidden"  value="${id}">
								<input name="head_class" type="hidden"  value="${head_class}">
				           		<c:choose>
								  <c:when test="${wait_approve == 1}">
								  	<button name="btn_approve" type="submit" class="btn btn-warning" style="width: 80px;" value="reject">ตีกลับ</button>&nbsp;&nbsp;&nbsp;
									<button name="btn_approve" type="submit" class="btn btn-danger" style="width: 80px;" value="not_approve">ไม่อนุมัติ</button>&nbsp;&nbsp;&nbsp;
									<button name="btn_approve" type="submit" class="btn btn-success" style="width: 80px;" value="approve">อนุมัติ</button>
								  </c:when>
								  <c:otherwise>
								  	<button name="btn_approve" type="submit" class="btn btn-warning" style="width: 80px;" value="reject">ตีกลับ</button>&nbsp;&nbsp;&nbsp;
									<button name="btn_approve" type="submit" class="btn btn-success" style="width: 80px;" value="ok">เห็นควร</button>
								  </c:otherwise>
								 </c:choose>
								<span style="color: white;"><br>-</span>
							</div>
						</div>
						<div style="margin:0px;padding:0px;overflow:hidden;">
						<c:choose>
							<c:when test="${head_class == 'PR'}">
								<img alt="" src="${pageContext.request.contextPath}/assets/img/pdf/pr.jpg" style="width: 100%">
							</c:when>
							<c:otherwise>
								<img alt="" src="${pageContext.request.contextPath}/assets/img/pdf/po.jpg" style="width: 100%">
							</c:otherwise>
						</c:choose>
						<!-- <iframe src="add_edit_request_vender.htm?id=${id}&view=info" width="101%" frameborder="0" onload="resizeIframe(this)"></iframe> -->
							<!-- <iframe src="${pageContext.request.contextPath}/assets/img/pdf/pr.pdf&embedded=true" frameborder="0" height="100%" width="100%"></iframe>-->
						</div>
					</div>
				</div>
			</div>
	    </form>
	 </section>
	 
	 <script>
	 $(document).ready(function() {
		 //PDFObject.embed("${pageContext.request.contextPath}/assets/img/pdf/pr.pdf", "#example1");
	 });
	  function resizeIframe(obj) {
	    obj.style.height = obj.contentWindow.document.body.scrollHeight+400 + 'px';
	  }
	</script>
    
	<!-- /.row -->
	<%@ include file="footer.jsp"%>