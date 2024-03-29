
<%@ page import="com.br.quickstart.TekUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tekUser.label', default: 'TekUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tekUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tekUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nomeCompleto" title="${message(code: 'tekUser.nomeCompleto.label', default: 'Nome Completo')}" />
					
						<g:sortableColumn property="nomeUsuario" title="${message(code: 'tekUser.nomeUsuario.label', default: 'Nome Usuario')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'tekUser.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'tekUser.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="website" title="${message(code: 'tekUser.website.label', default: 'Website')}" />
					
						<g:sortableColumn property="bio" title="${message(code: 'tekUser.bio.label', default: 'Bio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tekUserInstanceList}" status="i" var="tekUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tekUserInstance.id}">${fieldValue(bean: tekUserInstance, field: "nomeCompleto")}</g:link></td>
					
						<td>${fieldValue(bean: tekUserInstance, field: "nomeUsuario")}</td>
					
						<td>${fieldValue(bean: tekUserInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: tekUserInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: tekUserInstance, field: "website")}</td>
					
						<td>${fieldValue(bean: tekUserInstance, field: "bio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tekUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
