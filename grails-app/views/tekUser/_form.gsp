<%@ page import="com.br.quickstart.TekUser" %>



<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'nomeCompleto', 'error')} ">
	<label for="nomeCompleto">
		<g:message code="tekUser.nomeCompleto.label" default="Nome Completo" />
		
	</label>
	<g:textField name="nomeCompleto" value="${tekUserInstance?.nomeCompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'nomeUsuario', 'error')} ">
	<label for="nomeUsuario">
		<g:message code="tekUser.nomeUsuario.label" default="Nome Usuario" />
		
	</label>
	<g:textField name="nomeUsuario" value="${tekUserInstance?.nomeUsuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="tekUser.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${tekUserInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="tekUser.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${tekUserInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="tekUser.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${tekUserInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekUserInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="tekUser.bio.label" default="Bio" />
		
	</label>
	<g:textArea name="bio" cols="40" rows="5" maxlength="500" value="${tekUserInstance?.bio}"/>

</div>

