<%-- 
    Document   : amortização-price
    Created on : 04/04/2018, 19:37:16
    Author     : mitsu
--%>

<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src='js/jquery.min.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <script src='js/scripts.js'></script>
        <link href='src/css/bootstrap.css' rel='stylesheet'>
        
        <title>Amortização Price</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <center>
        <h1>Amortização PRICE</h1>
        
        <form>
            <b>Valor Empréstimo</b><br/><input type="text" name="valorEmp" required=""/><br/>
            <b>Tempo</b><br/><input type="text" name="temp" /><br/>
            <b>Taxa de Juros ao Mês</b><br/><input type="text" name="txJuros" required=""/><br/>
            <br/><input type="submit"  value="Calcular" /><br/>
        </form>
        <%DecimalFormat dec = new DecimalFormat("###,##0.00"); %> 
        <% try { %>
            <%double valorEmp = Double.parseDouble(request.getParameter("valorEmp")); %>  
            <%int temp= Integer.parseInt(request.getParameter("temp")); %>  
            <%double txJuros = Double.parseDouble(request.getParameter("txJuros")); %>
            <%double valorParc = 0;%>
           <br/>
              
           <p>Um empréstimo de $<%=valorEmp%> a ser pago em <%=temp%> meses a uma taxa de juros de <%=txJuros%>% ao mês: 
           
           
            <table border="1" style="text-align: center">
            <tr>
                <th>Período</th>
                <th>Saldo Devedor</th> 
                <th>Valor da parcela</th>
                <th>Juros</th> 
                <th>Amortização</th>
            <tr>
                <td> 0 </td>
                <td> R$<%=valorEmp%> </td>
                <td> - </td>
                <td> - </td>
                <td> - </td>
            </tr>
            

            <%BigDecimal bvalorEmp = new BigDecimal(valorEmp); %>
            <%BigDecimal btxJuros = new BigDecimal(txJuros).divide(new BigDecimal(100)); %>
            <%BigDecimal bvalorParc = new BigDecimal(valorParc); %>
            <%BigDecimal bvalorJuros = new BigDecimal(0);%>
            <%BigDecimal bcalc = new BigDecimal(0);%>
            <%BigDecimal bvalorAmr = new BigDecimal(0);%>
            <%BigDecimal bvalorNovo = new BigDecimal(0);%>
            <%BigDecimal bvalortxJuros = new BigDecimal(0);%>
            <%BigDecimal bvalorEmpnovo = new BigDecimal (0);%>
            <%bvalorJuros = BigDecimal.ONE.add(btxJuros).pow(temp).subtract(BigDecimal.ONE);%>
            <%bcalc = BigDecimal.ONE.add(btxJuros).pow(temp).multiply(btxJuros);%>
            <%bvalorNovo = bvalorJuros.divide(bcalc,4,RoundingMode.HALF_DOWN );%>
            <%bvalorParc = bvalorEmp.divide(bvalorNovo,4,RoundingMode.HALF_DOWN);%>
            
            <% for (int i=1; i <= temp; i ++) { %>
            <%bvalortxJuros = bvalorEmp.multiply(btxJuros); %>
            <%bvalorAmr= bvalorParc.subtract(bvalortxJuros); %>
            <%bvalorEmpnovo = bvalorEmp.subtract(bvalorAmr); %>
            <%bvalorEmp = bvalorEmpnovo;%>
            
            <tr>
                <td> <%=i%> </td>
                <td>R$<%=dec.format(bvalorEmpnovo)%> </td>
                <td>R$<%=dec.format(bvalorParc)%> </td>
                <td>R$<%=dec.format(bvalortxJuros)%> </td>
                <td>R$<%=dec.format(bvalorAmr)%> </td>
            </tr>  
            <%}%>
            </table>        
        <% } catch(Exception ex) {%>
                Entrar com um número válido.
                <%}%>
        </center>
    </body> 
</html>
