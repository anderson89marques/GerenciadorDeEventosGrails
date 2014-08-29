<%@ page contentType="text/html;charset=UTF-8" %>
<h3>Voluntários</h3>
<table>
	<thead>
		<tr>
			<th>Nome</th>
			<th>Endereço de email</th>
			<th>Site</th>
		</tr>
	</thead>
	<g:each in="${voluntarios}" var="voluntario">
		<tr>
			<td>
				<g:link controller="tekUser" action="show" id="${voluntario.id}">
					${voluntario.nomeCompleto}
				</g:link>
			</td>
			<td>
				<a href="mailto:${voluntario.email}">
					${voluntario.email}
				</a>
			</td>
			<td>
				<a href="http://${voluntario.website}">
					${voluntario.website}
				</a>
			</td>
		</tr>
	</g:each>
</table>