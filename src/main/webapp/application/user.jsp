<%@ include file="header.jsp" %>

<c:set var="username" value="<%= request.getParameter("username")%>"/>
<c:set var="password" value="<%= request.getParameter("password")%>"/>
<c:set var="confirmPassword" value="<%= request.getParameter("passwordConfirm")%>"/>

<c:set var="existingUser" value="${applicationScope.users[username]}"/>

<c:choose >

    <c:when test="${existingUser != null}">
        <%
            response.setStatus(400);
        %>
         <jsp:forward page="createUser.jsp">
            <jsp:param name="errorMessage"
            value="User alredy exists!"/>
         </jsp:forward>
    </c:when>
    <c:when test="${password != confirmPassword}">
            <%
                response.setStatus(400);
            %>
             <jsp:forward page="createUser.jsp">
                  <jsp:param name="errorMessage"
                  value="Password invalid!"/>
            </jsp:forward>
        </c:when>
        <c:otherwise>
        <%
       Map users= (Map) application.getAttribute("users");
       users.put(
       request.getParameter("username"),
       request.getParameter("password"));
       %>
        <jsp:forward page="loginForm.jsp"/>
        </c:otherwise>
</c:choose>



<%@ include file="footer.jsp" %>