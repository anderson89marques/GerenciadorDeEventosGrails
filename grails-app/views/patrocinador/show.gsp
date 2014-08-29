
<%@ page import="com.br.quickstart.Patrocinador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patrocinador.label', default: 'Patrocinador')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patrocinador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patrocinador" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patrocinador">
			
				<g:if test="${patrocinadorInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="patrocinador.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${patrocinadorInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="patrocinador.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${patrocinadorInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="patrocinador.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${patrocinadorInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorInstance?.logo}">
				<li class="fieldcontain">
					<span id="logo-label" class="property-label"><g:message code="patrocinador.logo.label" default="Logo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorInstance?.eventos}">
				<li class="fieldcontain">
					<span id="eventos-label" class="property-label"><g:message code="patrocinador.eventos.label" default="Eventos" /></span>
					
						<g:each in="${patrocinadorInstance.eventos}" var="e">
						<span class="property-value" aria-labelledby="eventos-label"><g:link controller="tekEvent" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patrocinadorInstance?.patrocinadorships}">
				<li class="fieldcontain">
					<span id="patrocinadorships-label" class="property-label"><g:message code="patrocinador.patrocinadorships.label" default="Patrocinadorships" /></span>
					
						<g:each in="${patrocinadorInstance.patrocinadorships}" var="p">
						<span class="property-value" aria-labelledby="patrocinadorships-label"><g:link controller="patrocinadorship" action="show" id="${p.id}">${p?.evento.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:patrocinadorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${patrocinadorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
