
<%@ page import="com.br.quickstart.Patrocinadorship" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patrocinadorship.label', default: 'Patrocinadorship')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patrocinadorship" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patrocinadorship" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patrocinadorship">
			
				<g:if test="${patrocinadorshipInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="patrocinadorship.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:link controller="tekEvent" action="show" id="${patrocinadorshipInstance?.evento?.id}">${patrocinadorshipInstance?.evento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorshipInstance?.patrocionador}">
				<li class="fieldcontain">
					<span id="patrocionador-label" class="property-label"><g:message code="patrocinadorship.patrocionador.label" default="Patrocionador" /></span>
					
						<span class="property-value" aria-labelledby="patrocionador-label"><g:link controller="patrocinador" action="show" id="${patrocinadorshipInstance?.patrocionador?.id}">${patrocinadorshipInstance?.patrocionador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorshipInstance?.tipoDeContribuicao}">
				<li class="fieldcontain">
					<span id="tipoDeContribuicao-label" class="property-label"><g:message code="patrocinadorship.tipoDeContribuicao.label" default="Tipo De Contribuicao" /></span>
					
						<span class="property-value" aria-labelledby="tipoDeContribuicao-label"><g:fieldValue bean="${patrocinadorshipInstance}" field="tipoDeContribuicao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorshipInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="patrocinadorship.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${patrocinadorshipInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorshipInstance?.notas}">
				<li class="fieldcontain">
					<span id="notas-label" class="property-label"><g:message code="patrocinadorship.notas.label" default="Notas" /></span>
					
						<span class="property-value" aria-labelledby="notas-label"><g:fieldValue bean="${patrocinadorshipInstance}" field="notas"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:patrocinadorshipInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${patrocinadorshipInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
