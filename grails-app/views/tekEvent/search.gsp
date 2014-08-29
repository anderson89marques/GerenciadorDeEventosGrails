<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Resultados da pesquisa</title>
</head>
<body>
  <div class="nave" role="navigation">
  	<ul>
  		<li><a class="home" href="${creatLink(uri: '/')}">Home</a> </li>
  	</ul>
  </div>
  
  <div id="list-tekEvent" class="content scaffold-list" role="main">
  		<h1>Resultados:</h1>
  		<ol>
  			<g:if test="${ events }">
  				<g:each in="${ events }" var="event">
  					<li>
  						<g:link action="show" id="${ event.id }"> ${ event }</g:link>
  					</li>
  				</g:each>
  			</g:if>
  			<g:else>
  				<h3>Nenhum Resultado Encontrado</h3>
  			</g:else>
  		</ol>	
  </div>
</body>
</html>