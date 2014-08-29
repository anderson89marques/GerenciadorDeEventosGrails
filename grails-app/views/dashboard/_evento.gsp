<%@ page contentType="text/html;charset=UTF-8" %>

<span style="text-align: center">
	<h1>${event}</h1>
</span>
<table>
  <tr>
    <td>Data inicial: <g:formatDate format="dd/MM/yyyy" date="${event.dataInicio }"/></th>
    <td>Data Final: <g:formatDate format="dd/MM/yyyy" date="${event.dataFinal }"/></th>
  </tr>
  <tr>
    <td>Local: ${event.venue}</td>
    <td>Número de pontenciais interessados: ${event.interessados.size()}</td>
  </tr>
</table>

