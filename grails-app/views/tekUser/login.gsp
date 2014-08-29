<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="layout" content="main">
		<title>Login</title>
	</head>
	<body>
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>
		<g:form action="validate">
			<g:hiddenField name="cName" value="${ cName }"/>
			<g:hiddenField name="aName" value="${ aName }"/>
			<table style="width: 550px; margin: auto;">
				<tr class="fieldcontain">
					<td style="padding-left: 40px;  padding-right: 0px;">
						<label for="nomeUsuario">Usuário:</label>
					</td>
					<td>
						<g:textField name="nomeUsuario" id="nomeUsuario"/>
					</td>
				</tr>
				<tr class="fieldcontain">
					<td style="padding-left: 40px; padding-right: 0px;">
						<label for="password">Password:</label>
					</td>
					
					<td>
						<g:passwordField name="password" id="password" />
					</td>
				</tr>
				<tr class="fieldcontain">
					<td>
					</td>
					
					<td>
						<g:submitButton name="submit" value="login"/>
					</td>
				</tr>
			</table>
		</g:form>
	</body>
</html>