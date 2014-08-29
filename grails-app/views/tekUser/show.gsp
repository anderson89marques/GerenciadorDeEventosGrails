
<%@ page import="com.br.quickstart.TekUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tekUser.label', default: 'TekUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tekUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tekUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tekUser">
			
				<g:if test="${tekUserInstance?.nomeCompleto}">
				<li class="fieldcontain">
					<span id="nomeCompleto-label" class="property-label"><g:message code="tekUser.nomeCompleto.label" default="Nome Completo" /></span>
					
						<span class="property-value" aria-labelledby="nomeCompleto-label"><g:fieldValue bean="${tekUserInstance}" field="nomeCompleto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekUserInstance?.nomeUsuario}">
				<li class="fieldcontain">
					<span id="nomeUsuario-label" class="property-label"><g:message code="tekUser.nomeUsuario.label" default="Nome Usuario" /></span>
					
						<span class="property-value" aria-labelledby="nomeUsuario-label"><g:fieldValue bean="${tekUserInstance}" field="nomeUsuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekUserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="tekUser.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${tekUserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekUserInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="tekUser.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${tekUserInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekUserInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="tekUser.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${tekUserInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekUserInstance?.bio}">
				<li class="fieldcontain">
					<span id="bio-label" class="property-label"><g:message code="tekUser.bio.label" default="Bio" /></span>
					
						<span class="property-value" aria-labelledby="bio-label"><g:fieldValue bean="${tekUserInstance}" field="bio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tekUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tekUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
