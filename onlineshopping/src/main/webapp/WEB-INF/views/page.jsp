<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';

	window.contextRoot = "${contextRoot}";
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link href="${css}/glyphicons.css" rel="stylesheet">

<!-- Bootstrap yeti theme -->
<link href="${css}/bootstrap-yeti-theme.css" rel="stylesheet">

<!-- Bootstrap dataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class='wrapper'>

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class='content'>
			<!-- Loading the home content -->
			<c:if test="${userClickHome == true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true}">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true}">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks show products -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks show single product -->
			<c:if test="${userClickShowProduct == true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks manage product -->
			<c:if test="${userClickManageProducts == true}">
				<%@include file="manageProducts.jsp"%>
			</c:if>

			<!-- Load only when user clicks show cart -->
			<c:if test="${userClickShowCart == true}">
				<%@include file="cart.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks payment gateway -->
			<c:if test="${userClickPayment == true}">
				<%@include file="payment.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks Cash on Delivery option -->
			<c:if test="${userClickCODOption == true}">
				<%@include file="cod.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks Card payment option -->
			<c:if test="${userClickCardOption == true}">
				<%@include file="card.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks Netbanking payment option -->
			<c:if test="${userClickNetBankOption == true}">
				<%@include file="netbank.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks wallet option -->
			<c:if test="${userClickWalletOption == true}">
				<%@include file="wallet.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks UPI option -->
			<c:if test="${userClickUPIOption == true}">
				<%@include file="upi.jsp"%>
			</c:if>

		</div>

		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>
		
		<!-- jQuery validator -->
		<script src="${js}/jquery.validate.js"></script>
		
		<!-- Bootstrap core JavaScript -->
		<script src="${js}/bootstrap.bundle.min.js"></script>
		
		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>
		
		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap.js"></script>

		<!-- Bootbox -->
		<script src="${js}/bootbox.min.js"></script> 

		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>

	</div>

</body>

</html>
