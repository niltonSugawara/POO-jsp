<%-- 
    Document   : amoritzacaoSAC
    Created on : 01/04/2018, 00:25:08
    Author     : JANAINASILVADIAS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src='js/jquery.min.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <script src='js/scripts.js'></script>
        <link href='src/css/bootstrap.css' rel='stylesheet'>

        <title> Amortização Constante SAC</title>
        
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf" %>
    <center>
        <h1>Cálculo Sistema SAC </h1>
        <form>
            
            <b>Saldo Devedor</b>  <br/><input type="text" name="capital" required=""/><br/>
            <b>Tempo</b>  <br/><input type="number" name="parcelas"  /><br/>
            <b>Taxa de Juros</b>  <br/><input type="number" name="juros"  /><br/>
           <br/> <input type="submit" Value="Enviar"/><br/>
        </form>
        <% try { %>
        
           <%int capital = Integer.parseInt(request.getParameter("capital")); %>  
           <%int parcelas = Integer.parseInt(request.getParameter("parcelas")); %>  
           <%int juros = Integer.parseInt(request.getParameter("juros")); %>  
           <% int valorAmortizacao = capital/parcelas; %>
           <br/>
           
           <p>Um empréstimo de $<%=capital%> a ser pago em <%=parcelas%> meses a uma taxa de juros de <%=juros%>% ao mês (em juros simples), portanto, o valor da amortização é constante a cada mês, sendo neste caso: <b>$<%=capital%>/<%=parcelas%> = $<%=valorAmortizacao%></b>. <br/>Logo, a tabela SAC fica:</p>
           
           
            <table border="1" style="text-align: center">
            <tr>
                <th>Período</th>
                <th>Prestação</th> 
                <th>Juros</th>
                <th>Amortização</th> 
                <th>Saldo Devedor</th>
            <tr>
                <td> 0 </td>
                <td> - </td>
                <td> - </td>
                <td> - </td>
                <td>$<%=capital%> </td>
            </tr>
            

            <% int novoCapital = 0; %>
            <% novoCapital = (capital - valorAmortizacao);%>
            <% int novoJuro = (capital*juros)/100; %>
            <% int novaPrestacao = valorAmortizacao+novoJuro;%>
            <% int totalJuro = 0;%>
            <% int totalAmortizacao = 0;%>
            <% int totalPrestacao = 0;%>
            
            
            
            <% for (int i=1; i <= parcelas; i ++) { %>
            
            <%totalPrestacao = totalPrestacao + novaPrestacao;%>
            <%totalJuro = totalJuro + novoJuro;%>
            
            <tr>
                <td> <%=i%> </td>
                <td>$<%=novaPrestacao%> </td>
                <td>$<%=novoJuro%> </td>
                <td>$<%=valorAmortizacao%> </td>
                <td>$<%=novoCapital%> </td>
            </tr>  
             
             
             <%novoJuro = (novoCapital*juros)/100; %> 
             <%novaPrestacao = valorAmortizacao+novoJuro;%>
             <%novoCapital = (novoCapital - valorAmortizacao); %>
             
             
             <%totalAmortizacao = totalAmortizacao + valorAmortizacao;%>
          
            
                <%}%>
                <tr>
                    <td> <b>Total</b> </td>
                    <td><b>$<%=totalPrestacao%></b> </td>
                    <td><b>$<%=totalJuro%></b></td>
                    <td><b>$<%=totalAmortizacao%></b> </td>
                    <td><b>-</b></td>
            </tr>
            </table>
             
                
          
         <% }catch(Exception ex){%>
             Entre com um número válido.
        <%}%>
        
    </center>
    </body>
     <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
