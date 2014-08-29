<%@ page import="com.br.quickstart.Patrocinador" %>



<div class="fieldcontain ${hasErrors(bean: patrocinadorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="patrocinador.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${patrocinadorInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorInstance, field: 'website', 'error')} required">
	<label for="website">
		<g:message code="patrocinador.website.label" default="Website" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="website" required="" value="${patrocinadorInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="patrocinador.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" value="${patrocinadorInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="patrocinador.logo.label" default="Logo" />
		
	</label>
	<input type="file" id="logo" name="logo" />

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorInstance, field: 'eventos', 'error')} ">
	<label for="eventos">
		<g:message code="patrocinador.eventos.label" default="Eventos" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: patrocinadorInstance, field: 'patrocinadorships', 'error')} ">
	<label for="patrocinadorships">
		<g:message code="patrocinador.patrocinadorships.label" default="Patrocinadorships" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${patrocinadorInstance?.patrocinadorships?}" var="p">
    <li><g:link controller="patrocinadorship" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="patrocinadorship" action="create" params="['patrocinador.id': patrocinadorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'patrocinadorship.label', default: 'Patrocinadorship')])}</g:link>
</li>
</ul>


</div>

