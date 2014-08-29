
<%@ page import="com.br.quickstart.TekEvent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tekEvent.label', default: 'TekEvent')}" />
		
		<g:javascript library="jquery"/>
		<r:require module="jquery-ui"/>
		
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tekEvent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" controller="dashboard" action="dashboard" id="${tekEventInstance.id}">Dashboard Evento</g:link></li>
				<li><g:volunteerButton eventId="${tekEventInstance.id}"/></li>
				
			</ul>
		</div>
		<div id="show-tekEvent" class="content scaffold-show" role="main">
			<h1>${tekEventInstance?.nome}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tekEvent">
				<g:if test="${tekEventInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="tekEvent.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${tekEventInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${tekEventInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label">Localização</span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${tekEventInstance}" field="cidade"/>,</span>
						<span class="property-value" aria-labelledby="venue-label"><g:fieldValue bean="${tekEventInstance}" field="venue"/></span>
				</li>
				</g:if>
			
				<g:if test="${tekEventInstance?.organizador}">
				<li class="fieldcontain">
					<span id="organizador-label" class="property-label"><g:message code="tekEvent.organizador.label" default="Organizador" /></span>
					
						<span class="property-value" aria-labelledby="organizador-label"><g:link controller="tekUser" action="show" id="${tekEventInstance?.organizador?.id}">${tekEventInstance?.organizador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekEventInstance?.dataInicio}">
				<li class="fieldcontain">
					<span id="dataInicio-label" class="property-label"><g:message code="tekEvent.dataInicio.label" default="Data Inicio" /></span>
					
						<span class="property-value" aria-labelledby="dataInicio-label"><g:formatDate format="MMMM dd, yyyy" date="${tekEventInstance?.dataInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekEventInstance?.dataFinal}">
				<li class="fieldcontain">
					<span id="dataFinal-label" class="property-label"><g:message code="tekEvent.dataFinal.label" default="Data Final" /></span>
					
						<span class="property-value" aria-labelledby="dataFinal-label"><g:formatDate format="MMMM dd, yyyy" date="${tekEventInstance?.dataFinal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekEventInstance?.voluntarios}">
				<li class="fieldcontain">
					<span id="voluntarios-label" class="property-label"><g:message code="tekEvent.voluntarios.label" default="Voluntarios" /></span>
					
						<g:each in="${tekEventInstance.voluntarios}" var="v">
						<span class="property-value" aria-labelledby="voluntarios-label"><g:link controller="tekUser" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${tekEventInstance?.tarefas}">
				<li class="fieldcontain">
					<span id="tarefas-label" class="property-label"><g:message code="tekEvent.tarefas.label" default="Tarefas" /></span>
					
						<g:each in="${tekEventInstance.tarefas}" var="t">
						<span class="property-value" aria-labelledby="tarefas-label"><g:link controller="tarefa" action="show" id="${t.id}">${t?.titulo}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<li class="fieldcontain">
					<span id="mensagens-label" class="property-label"><g:message code="tekEvent.mensagens.label" default="Fórum de Mensagens" /></span>
					
						<span class="property-value" aria-labelledby="mensagens-label">
						<g:link controller="tekMessage" action="index" id="${tekEventInstance.id}">
						click aqui</g:link>
						</span>
					
				</li>
				
				<g:if test="${tekEventInstance?.patrocinadores}">
				<li class="fieldcontain">
					<span id="patrocinadores-label" class="property-label"><g:message code="tekEvent.patrocinadores.label" default="Patrocinadores" /></span>
					
						<g:each in="${tekEventInstance.patrocinadores}" var="p">
						<span class="property-value" aria-labelledby="patrocinadores-label"><g:link controller="patrocinador" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${tekEventInstance?.interessados}">
				<li class="fieldcontain">
					<span id="interessados-label" class="property-label"><g:message code="tekEvent.interessados.label" default="Interessados" /></span>
					
						<span class="property-value" aria-labelledby="interessados-label"><g:fieldValue bean="${tekEventInstance}" field="interessados"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tekEventInstance?.patrocinadorships}">
				<li class="fieldcontain">
					<span id="patrocinadorships-label" class="property-label"><g:message code="tekEvent.patrocinadorships.label" default="Patrocinadorships" /></span>
					
						<g:each in="${tekEventInstance.patrocinadorships}" var="p">
						<span class="property-value" aria-labelledby="patrocinadorships-label"><g:link controller="patrocinadorship" action="show" id="${p.id}">${p?.patrocinador.encodeAsHTML()}</g:link></span>
						</g:each>
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tekEventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tekEventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
