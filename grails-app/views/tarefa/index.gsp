
<%@ page import="com.br.quickstart.Tarefa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tarefa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tarefa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'tarefa.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'tarefa.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="tarefa.atribuidoPara.label" default="Atribuido Para" /></th>
					
						<g:sortableColumn property="dueDate" title="${message(code: 'tarefa.dueDate.label', default: 'Due Date')}" />
					
						<th><g:message code="tarefa.evento.label" default="Evento" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tarefaInstanceList}" status="i" var="tarefaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tarefaInstance.id}">${fieldValue(bean: tarefaInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: tarefaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: tarefaInstance, field: "atribuidoPara")}</td>
					
						<td><g:formatDate date="${tarefaInstance.dueDate}" /></td>
					
						<td>${fieldValue(bean: tarefaInstance, field: "evento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tarefaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
