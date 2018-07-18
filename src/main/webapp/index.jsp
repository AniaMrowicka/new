<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page session ="true" %>
<%@ include file="header.jsp" %>
<jsp:useBean class="pl.sda.jsp.Calculation" id="calc" scope="application" />
<jsp:setProperty property="multiplier" name="calc" value="12" />


<html>

<header><% out.print("Hello!!!!"); %></header>
<body>
<h2>Hello World!</h2>

<a href="request.jsp">REQUEST </a><br>
<a href="response.jsp">RESPONSE</a><br>
<a href="forward.jsp"> FORWARD</a><br>
<a href="session.jsp">SESSION </a><br>
<a href="print.jsp">PRINT</a><br>
<a href="forEach.jsp">FOR EACH</a><br>
<a href="declaration.jsp">DECLARATION</a><br>
<a href="expressionLanguage.jsp">EXPRESSION LANGUAGE</a><br>
<a href="javaBean.jsp">javaBean</a><br>
<a href="coreTags2.jsp">coreTags</a><br>
<a href="application/loginForm.jsp">loginForm</a><br>

<jsp:include page="application.jsp"/>

</body>
</html>
