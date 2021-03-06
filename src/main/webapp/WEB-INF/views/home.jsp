<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomeWork2</title>
</head>
<body>
	<p>
		<a href="${pageContext.request.contextPath}/gradetables">학기별 이수 학점 조회</a>
	</p>
	
	<p>
		<a href="${pageContext.request.contextPath}/createpregrade">수강 신청하기</a>
	</p>
	
	<p>
		<a href="${pageContext.request.contextPath}/pregrades">2019 수강 신청 조회</a>
	</p>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<a href="javascript:document.getElementById('logout').submit()">Logout</a>
	</c:if>

	<form id="logout" action="<c:url value="/logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

</body>
</html>