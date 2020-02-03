<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@page import="java.util.HashMap"%>
<jsp:useBean id="a" class="com.luxury.util.Menu"></jsp:useBean>
<div class="content">
	<p:choose>
		<p:when test="${param.content == null}">
			<jsp:include page="Home.jsp"></jsp:include>
		</p:when>
		<p:otherwise>
			<jsp:include page="${a.getPage(param.content)}"></jsp:include>
		</p:otherwise>
	</p:choose>
</div>