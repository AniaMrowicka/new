

<%@ page import="java.util.*"%>
<p><%="Hello!!!!"   %></p>
<p>Accept-Language: <%=request.getHeader("Accept-Language")   %></p>
<p>User-Agent: <%=request.getHeader("User-Agent")   %></p>
<p>parameter: "subject" <% out.print(request.getParameter("subject"));   %></p>
<p>parameter: "code" <% out.print(request.getParameter("code"));   %></p>
<p>Metoda HTTP <% out.print(request.getMethod());   %></p>
<p>URI zapytanie <% out.print(request.getRequestURI());   %></p>
<p>protokół  <% out.print(request.getProtocol());   %></p>
<p>host i addres uzytkownika  <% out.print(request.getRemoteHost());   %></p>
<p>host i addres uzytkownika  <% out.print(request.getRemoteAddr());   %></p>