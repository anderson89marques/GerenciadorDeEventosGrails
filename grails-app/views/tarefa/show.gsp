
<%@ page import="com.br.quickstart.Tarefa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tarefa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tarefa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tarefa">
			
				<g:if test="${tarefaInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="tarefa.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${tarefaInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="tarefa.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${tarefaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.atribuidoPara}">
				<li class="fieldcontain">
					<span id="atribuidoPara-label" class="property-label"><g:message code="tarefa.atribuidoPara.label" default="Atribuido Para" /></span>
					
						<span class="property-value" aria-labelledby="atribuidoPara-label"><g:link controller="tekUser" action="show" id="${tarefaInstance?.atribuidoPara?.id}">${tarefaInstance?.atribuidoPara?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="tarefa.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${tarefaInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tarefaInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="tarefa.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:link controller="tekEvent" action="show" id="${tarefaInstance?.evento?.id}">${tarefaInstance?.evento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>

				<g:if test="${tarefaInstance?.completada}">
					<li class="fieldcontain"><span id="completed-label"
						class="property-label"><g:message
								code="task.completed.label" default="Completada" /></span> 
								<span class="property-value" aria-labelledby="completed-label"> 
								<g:formatBoolean boolean="${tarefaInstance?.completada}" true="Yes" false="No" /></span>
					</li>
				</g:if>


		</ol>
			<g:form url="[resource:tarefaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tarefaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
