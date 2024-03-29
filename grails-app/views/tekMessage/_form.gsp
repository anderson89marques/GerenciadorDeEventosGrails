<%@ page import="com.br.quickstart.TekMessage" %>

<g:if test="${tekMessageInstance?.parent}" >
<input type="hidden" name="parent.id" value="${ tekMessageInstance?.parent.id }"/>
<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'parent', 'error')} required">
	<label for="parent">
	EM resposta à:	
	</label>
	${ tekMessageInstance?.parent.author }
</div>
</g:if>
<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="tekMessage.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${tekMessageInstance?.subject}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="tekMessage.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="2000" required="" value="${tekMessageInstance?.content}"/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'evento', 'error')} ">
	<label for="evento">
		<g:message code="tekMessage.evento.label" default="Evento" />
		
	</label>
	<g:select id="evento" name="evento.id" from="${com.br.quickstart.TekEvent.list()}" optionKey="id" value="${tekMessageInstance?.evento?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

--%><div class="fieldcontain ${hasErrors(bean: tekMessageInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="tekMessage.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${com.br.quickstart.TekUser.list()}" optionKey="id" required="" value="${tekMessageInstance?.author?.id}" class="many-to-one"/>

</div>


