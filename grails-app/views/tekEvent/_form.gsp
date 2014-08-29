<%@ page import="com.br.quickstart.TekEvent" %>



<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="tekEvent.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${tekEventInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="tekEvent.cidade.label" default="Cidade" />
		
	</label>
	<g:textField name="cidade" value="${tekEventInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="tekEvent.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="500" required="" value="${tekEventInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'organizador', 'error')} ">
	<label for="organizador">
		<g:message code="tekEvent.organizador.label" default="Organizador" />
		
	</label>
	<g:select id="organizador" name="organizador.id" from="${com.br.quickstart.TekUser.list()}" optionKey="id" value="${tekEventInstance?.organizador?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'venue', 'error')} ">
	<label for="venue">
		<g:message code="tekEvent.venue.label" default="Venue" />
		
	</label>
	<g:textField name="venue" value="${tekEventInstance?.venue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'dataInicio', 'error')} ">
	<label for="dataInicio">
		<g:message code="tekEvent.dataInicio.label" default="Data Inicio" />
		
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${tekEventInstance?.dataInicio}" years="${2008..2015}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'dataFinal', 'error')} ">
	<label for="dataFinal">
		<g:message code="tekEvent.dataFinal.label" default="Data Final" />
		
	</label>
	<g:datePicker name="dataFinal" precision="day"  value="${tekEventInstance?.dataFinal}"  years="${2008..2015}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'voluntarios', 'error')} ">
	<label for="voluntarios">
		<g:message code="tekEvent.voluntarios.label" default="Voluntarios" />
		
	</label>
	<g:select name="voluntarios" from="${com.br.quickstart.TekUser.list()}" multiple="multiple" optionKey="id" size="5" value="${tekEventInstance?.voluntarios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'tarefas', 'error')} ">
	<label for="tarefas">
		<g:message code="tekEvent.tarefas.label" default="Tarefas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tekEventInstance?.tarefas?}" var="t">
    <li><g:link controller="tarefa" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tarefa" action="create" params="['tekEvent.id': tekEventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tarefa.label', default: 'Tarefa')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'mensagens', 'error')} ">
	<label for="mensagens">
		<g:message code="tekEvent.mensagens.label" default="Mensagens" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tekEventInstance?.mensagens?}" var="m">
    <li><g:link controller="tekMessage" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tekMessage" action="create" params="['tekEvent.id': tekEventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tekMessage.label', default: 'TekMessage')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'interessados', 'error')} ">
	<label for="interessados">
		<g:message code="tekEvent.interessados.label" default="Interessados" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'patrocinadores', 'error')} ">
	<label for="patrocinadores">
		<g:message code="tekEvent.patrocinadores.label" default="Patrocinadores" />
		
	</label>
	<g:select name="patrocinadores" from="${com.br.quickstart.Patrocinador.list()}" multiple="multiple" optionKey="id" size="5" value="${tekEventInstance?.patrocinadores*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'patrocinadorships', 'error')} ">
	<label for="patrocinadorships">
		<g:message code="tekEvent.patrocinadorships.label" default="Patrocinadorships" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tekEventInstance?.patrocinadorships?}" var="p">
    <li><g:link controller="patrocinadorship" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="patrocinadorship" action="create" params="['tekEvent.id': tekEventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'patrocinadorship.label', default: 'Patrocinadorship')])}</g:link>
</li>
</ul>


</div>

