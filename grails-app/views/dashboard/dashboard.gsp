<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>TekDays - Dashboard</title>
</head>
<body>
  <div class="nav" role="navigation">
  	<ul>
  		<li><a class="home" href="${createLink(uri:'/') }">Home</a></li>
  		<li><g:link class="create" controller="tarefa" action="create">Criar tarefas</g:link></li>
  		<li><g:link class="create" controller="patrocinadorship" action="create">Criar patrocinadores</g:link></li>
  		<li><g:link class="list" controller="patrocinador" action="index">Todos os patrocinadores</g:link></li>
  	</ul>
  </div>	
	
  <div id="evento" style='margin: 10px 10px 10px 10px'>
  	<g:if test="${event }">
  		<g:render template="evento" model="${['event':event]}"></g:render>
  	</g:if>
  </div>
  <div id="tarefas" style='margin: 10px 10px 10px 10px'>
  	<g:render template="tarefas" model="${['tarefas':tarefas]}"></g:render>
  </div>
  <div id="voluntarios" style='margin: 10px 10px 10px 10px'>
  	<g:render template="vonlutarios" model="${['voluntarios':voluntarios]}"></g:render>
  </div>
  <div id="mensagens" style='margin: 10px 10px 10px 10px'>
  	<g:render template="mensagens" model="${['mensagens':mensagens]}"></g:render>
  </div>
  <div id="patrocinadores" style='margin: 10px 10px 10px 10px'>
  	<g:render template="patrocinadores" model="${['patrocinadorships':patrocinadorships]}"></g:render>
  </div>
</body>
</html>