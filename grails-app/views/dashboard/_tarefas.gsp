<%@ page contentType="text/html;charset=UTF-8" %>

<h3>Coisas para fazer</h3>
<table>
	<thead>
		<tr>
			<th>Título da tarefa</th>
			<th>Data</th>
			<th>Atribuído para</th>
		</tr>
	</thead>
	<g:each in="${tarefas}" var="tarefa">
		<tr>
			<td> ${tarefa.titulo} </td>
			<td>
				<g:formatDate format="MM/dd/yyyy" data="${tarefa.dueDate}"/>  
			</td>
			<td> ${tarefa.atribuidoPara} </td>
		</tr>
	</g:each>
</table>
<g:link controller="Tarefa" action="index">
	Visualizar todas ${event.tarefas.size()} tarefas para esse evento.
</g:link>