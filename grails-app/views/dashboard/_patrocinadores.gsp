<%@ page contentType="text/html;charset=UTF-8" %>
<h3>Patrocinadores</h3>
<table>
	<thead>
		<tr>
			<th>Nome</th>
			<th>Web Site</th>
			<th>Contribuição</th>
		</tr>
	</thead>
	<g:each in="${patrocinadorships}" var="s">
		<tr>
			<td>
				<g:link controller="patrocinador" action="show" id="${s.patrocinador.id}">
					${s.patrocinador.nome}
				</g:link>
			</td>
			<td>
				<a href="${s.patrocinador.website}">
					${s.patrocinador.website}
				</a>
				
			</td>
			<td>
				${s.tipoDeContribuicao}
			</td>
		</tr>
	</g:each>
</table>
