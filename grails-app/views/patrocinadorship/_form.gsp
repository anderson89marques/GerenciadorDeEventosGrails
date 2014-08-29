<%@ page import="com.br.quickstart.Patrocinadorship" %>



<div class="fieldcontain ${hasErrors(bean: patrocinadorshipInstance, field: 'evento', 'error')} required">
	<label for="evento">
		<g:message code="patrocinadorship.evento.label" default="Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="evento" name="evento.id" from="${com.br.quickstart.TekEvent.list()}" optionKey="id" required="" value="${patrocinadorshipInstance?.evento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorshipInstance, field: 'patrocionador', 'error')} required">
	<label for="patrocionador">
		<g:message code="patrocinadorship.patrocionador.label" default="Patrocionador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patrocionador" name="patrocionador.id" from="${com.br.quickstart.Patrocinador.list()}" optionKey="id" required="" value="${patrocinadorshipInstance?.patrocionador?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorshipInstance, field: 'tipoDeContribuicao', 'error')} required">
	<label for="tipoDeContribuicao">
		<g:message code="patrocinadorship.tipoDeContribuicao.label" default="Tipo De Contribuicao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDeContribuicao" from="${patrocinadorshipInstance.constraints.tipoDeContribuicao.inList}" required="" value="${patrocinadorshipInstance?.tipoDeContribuicao}" valueMessagePrefix="patrocinadorship.tipoDeContribuicao"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorshipInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="patrocinadorship.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${patrocinadorshipInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorshipInstance, field: 'notas', 'error')} ">
	<label for="notas">
		<g:message code="patrocinadorship.notas.label" default="Notas" />
		
	</label>
	<g:textArea name="notas" cols="40" rows="5" maxlength="5000" value="${patrocinadorshipInstance?.notas}"/>

</div>

