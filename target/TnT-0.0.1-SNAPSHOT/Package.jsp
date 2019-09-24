<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="window" items="${pageScope.windows}"
	varStatus="loopCounter">
	<c:out value="count: ${loopCounter.count}" />
	<c:out value="${window}" />
</c:forEach>
<c:forEach var="pagetitle" items="title">
	<h1>${title}</h1>
</c:forEach>
<c:forEach var="data" items="{name}">
	<c:out value="${data}">
	</c:out>
	<h1>${name}</h1>

</c:forEach>