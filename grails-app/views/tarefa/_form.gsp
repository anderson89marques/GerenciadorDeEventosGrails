<%@ page import="com.br.quickstart.Tarefa" %>



<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="tarefa.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${tarefaInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="tarefa.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="5000" value="${tarefaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'atribuidoPara', 'error')} ">
	<label for="atribuidoPara">
		<g:message code="tarefa.atribuidoPara.label" default="Atribuido Para" />
		
	</label>
	<g:select id="atribuidoPara" name="atribuidoPara.id" from="${com.br.quickstart.TekUser.list()}" optionKey="id" value="${tarefaInstance?.atribuidoPara?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'dueDate', 'error')} ">
	<label for="dueDate">
		<g:message code="tarefa.dueDate.label" default="Due Date" />
		
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${tarefaInstance?.dueDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'evento', 'error')} required">
	<label for="evento">
		<g:message code="tarefa.evento.label" default="Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="evento" name="evento.id" from="${com.br.quickstart.TekEvent.list()}" optionKey="id" required="" value="${tarefaInstance?.evento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tarefaInstance, field: 'completada', 'error')} ">
	<label for="completada">
	<g:message code="task.completed.label" default="Completada" />
	</label>
	<g:checkBox name="completeda" value="${tarefaInstance?.completada}" />
</div>


