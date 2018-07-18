<%@ page import="java.util.*"%>
<%@ page isELIgnored = "false" %>
${param.asd}
 <br>
 ${pageContext.request.method}
 <br>
 ${pageContext.request.uri}
 <br>

${1 + 2 + 3}
<br>
${2>=1}

${applicationScope.numberOfVisits}
<br>
<%
application.setAttribute("Marek", 1);
application.setAttribute("Mirek", 2);
application.setAttribute("Jarek", 3);
application.setAttribute("Darek", 4);
session.setAttribute("user", "Jarek");

ArrayList productslist = new ArrayList();
productslist.add("kawa");
productslist.add("masło");
productslist.add("bułka");
session.setAttribute("products",productslist );



Map<String, String> map= new HashMap<String, String>();
map.put("param1","value1");
map.put("param2","value2");
map.put("param3","value3");
application.setAttribute("params", map );
%>
<br>
${applicationScope[sessionScope.user]}
<br>

${sessionScope.products[param.currentProduct]}
<br>
${applicationScope.params.param1}