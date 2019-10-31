<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.HashMap"%>
<jsp:useBean id="t" class="com.tnt.util.AdminMenu"></jsp:useBean>
<div class="content">
	<c:choose>
		<c:when test="${param.content == null}">
			<jsp:include page="Home.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="${t.getPage(param.content)}"></jsp:include>
		</c:otherwise>
	</c:choose>
</div>