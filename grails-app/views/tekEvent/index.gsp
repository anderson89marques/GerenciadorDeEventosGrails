
<%@ page import="com.br.quickstart.TekEvent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tekEvent.label', default: 'TekEvent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tekEvent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tekEvent" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'tekEvent.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cidade" title="${message(code: 'tekEvent.cidade.label', default: 'Cidade')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'tekEvent.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="venue" title="${message(code: 'tekEvent.venue.label', default: 'Venue')}" />
					
						<g:sortableColumn property="dataInicio" title="${message(code: 'tekEvent.dataInicio.label', default: 'Data Inicio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tekEventInstanceList}" status="i" var="tekEventInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tekEventInstance.id}">${fieldValue(bean: tekEventInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: tekEventInstance, field: "cidade")}</td>
					
						<td>${fieldValue(bean: tekEventInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: tekEventInstance, field: "venue")}</td>
					
						<td><g:formatDate format="dd/MM/yyyy" date="${tekEventInstance.dataInicio}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tekEventInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
