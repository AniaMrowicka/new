<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<c:set var="name" value="1" scope="application/>
<c:set var="name" value="2" scope="session"/>
<c:set var="name" value="3" scope="request"/>
<c:set var="name" value="4"/>
<c:out value="${name}"/>

<c:if test="${name > 3}">
<p>true</p>
</c:if>

<c:catch var="catched">
<%
//int result= 9/0;
obj.throwException();
%>
</c:catch>

<c:if test="${catched != null}">
<%= catched%><br>
${exception.message}<br>
</c:if>