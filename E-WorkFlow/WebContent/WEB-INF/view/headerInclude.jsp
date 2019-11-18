<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- CSS -->					
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/components/Ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Admin.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/components/iCheck/square/blue.css">

<!-- JS -->
<script src="${pageContext.request.contextPath}/assets/components/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/admin.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/components/iCheck/icheck.min.js"></script>


<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="properties.messages" />