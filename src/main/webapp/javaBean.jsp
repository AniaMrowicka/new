<jsp:useBean class="pl.sda.jsp.Calculation" id="calc" scope="application" />
<jsp:useBean class="pl.sda.jsp.Calculation" id="calc2" />
kwadrat z 5:
<%
int result =calc.square(5);
out.print(result);
%>
<br>
wartosc multiplier:
<jsp:getProperty property="multiplier" name="calc"/>
<br>

rezultat metody multiply z 5*6:
<br>
<%
out.print(calc.multiply(5));
%>
<br>
rezultat metody multiplyz 5*10:
<jsp:setProperty property="multiplier" name="calc" value="10"/><br>
<%
out.print(calc.multiply(5));
%>