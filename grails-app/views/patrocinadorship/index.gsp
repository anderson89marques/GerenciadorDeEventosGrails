
<%@ page import="com.br.quickstart.Patrocinadorship" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patrocinadorship.label', default: 'Patrocinadorship')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-patrocinadorship" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-patrocinadorship" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="patrocinadorship.evento.label" default="Evento" /></th>
					
						<th><g:message code="patrocinadorship.patrocionador.label" default="Patrocionador" /></th>
					
						<g:sortableColumn property="tipoDeContribuicao" title="${message(code: 'patrocinadorship.tipoDeContribuicao.label', default: 'Tipo De Contribuicao')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'patrocinadorship.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="notas" title="${message(code: 'patrocinadorship.notas.label', default: 'Notas')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${patrocinadorshipInstanceList}" status="i" var="patrocinadorshipInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${patrocinadorshipInstance.id}">${fieldValue(bean: patrocinadorshipInstance, field: "evento")}</g:link></td>
					
						<td>${fieldValue(bean: patrocinadorshipInstance, field: "patrocionador")}</td>
					
						<td>${fieldValue(bean: patrocinadorshipInstance, field: "tipoDeContribuicao")}</td>
					
						<td>${fieldValue(bean: patrocinadorshipInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: patrocinadorshipInstance, field: "notas")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${patrocinadorshipInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
