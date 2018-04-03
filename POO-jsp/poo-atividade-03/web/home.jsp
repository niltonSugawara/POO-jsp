<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src='js/jquery.min.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <script src='js/scripts.js'></script>
        <link href='src/css/bootstrap.css' rel='stylesheet'>
        <title>Home</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf" %>
         <div class='container-fluid'>
            <div class='row'>
            <div class='col-md-12'>
              <center><h3>Perfil da Equipe</h3></center>
             

            <section>
                 
                 <div class='row'>
                         	<div class='col-sm-4 col-md-4'>
                                  <div class='thumbnail' style='background: #CCC'>
                                     <img src='https://avatars0.githubusercontent.com/u/36648465?s=460&v=4' alt='...' class='img-circle' width='242' height='200'>
                                          <div class='caption'>
                                            <h3 style='color: #006666' align='center'>Edvaldo Pietro</h3>
                                               <p align='center'><b>Github: </b><a href='https://github.com/' target='_blank'>@ </p></a>
                                            </div>
                                 </div>
                        	 </div>
                     <div class='col-sm-4 col-md-4'>
                                  <div class='thumbnail' style='background: #CCC'>
                                     <img src='https://avatars0.githubusercontent.com/u/36648465?s=460&v=4' alt='...' class='img-circle' width='242' height='200'>
                                          <div class='caption'>
                                            <h3 style='color: #006666' align='center'>Janaina Dias</h3>
                                               <p align='center'><b>Github: </b><a href='https://github.com/janainadias95' target='_blank'>@janainadias95</p></a>
                                            </div>
                                 </div>
                        	 </div>
                     <div class='col-sm-4 col-md-4'>
                                  <div class='thumbnail' style='background: #CCC'>
                                     <img src='https://avatars0.githubusercontent.com/u/36648465?s=460&v=4' alt='...' class='img-circle' width='242' height='200'>
                                          <div class='caption'>
                                            <h3 style='color: #006666' align='center'>Nilton </h3>
                                               <p align='center'><b>Github: </b><a href='https://github.com/' target='_blank'>@ </p></a>
                                            </div>
                                 </div>
                        	 </div>
                 </div>
                 
            </section>
              <hr/>
                <center>
                <a href='amortizacao-constante.jsp' target='_blank'>
                <h3>Sistema de Cálculo de Amortizaçao Constante</h3></a><br/>
                
                <p> <b>Sistema de Amortização Constante (SAC)</b> é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo.
                    Neste sistema o saldo devedor é reembolsado em valores de amortização iguais. Desta forma, no sistema SAC o valor das prestações é decrescente, já que os juros diminuem a cada prestação. O valor da amortização é calculada dividindo-se o valor do principal pelo número de períodos de pagamento, ou seja, de parcelas.
                    O SAC é um dos tipos de sistema de amortização utilizados em financiamentos imobiliários. A principal característica do SAC é que ele amortiza um percentual fixo do valor principal (emissão), desde o início do financiamento. Esse percentual de amortização é sempre o mesmo, o que faz com que a parcela de amortização da dívida seja maior no início do financiamento, fazendo com que o saldo devedor caia mais rapidamente do que em outros mecanismos de amortização.
                </p><br/> 
                <br/>
                 
                
		<hr/>
            </center>
                  
    </body>
     <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
