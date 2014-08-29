<%@ page contentType="text/html;charset=UTF-8" %>
<h3>Fórum de Mansagens</h3>
<table>
	<thead>
		<tr>
			<th>Autor</th>
			<th>Assunto</th>
			<th>Conteúdo</th>
		</tr>
	</thead>
	<g:each in="${mensagens}" var="mensagem">
		<tr>
			<td>
				<g:link controller="tekUser" action="show" id="${mensagem.author.id}">
					${mensagem.author}
				</g:link>
			</td>
			<td>
				${mensagem.subject}
			</td>
			<td>
				${mensagem.content[0..Math.min(mensagem.content.size() -1, 24)]}
				${mensagem.content.size() > 25 ? '...' : ''}
			</td>
		</tr>
	</g:each>
</table>
<g:if test="${mensagens}">
	<g:link controller="tekMessage" action="index" id="${event.id}">
		Visualizar todas as mensagens desse evento.
	</g:link>
</g:if>
<g:else>
	<g:link controller="tekMessage" action="create" id="${event.id}">
		Seja o primeiro a falar no fórum.
	</g:link>
</g:else>