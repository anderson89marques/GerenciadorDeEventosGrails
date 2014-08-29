<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>TekDays - A comunidade no Evento</title>
	</head>
	<body>
		<div id="wellcome">
			<h3>Bem vindo ao TekDays.com</h3>
			</br>
			<p>TekDays.com is a site dedicated to assisting individuals and
				communities to organize technology conferences. To bring great
				minds with common interests and passions together for the good
				of greater geekdom!
			</p>
		</div>
	<div id="homeSearch">
		<g:form controller="tekEvent" action="search">
			<label>Search:</label>
			<input id="query" type="text" name="query" />
			<input type=submit value="Go" />
		</g:form>
	</div>

		<g:organizerEvents/>
		<g:volunteerEvents/>
		
		<div class="homecell">
			<h3>Encontre um evento</h3>
			</br>
			<p>See if there's a technical event in the works that strikes your
				fancy. If there is, you can volunteer to help or just let the
				organizers know that you'd be interested in attending.
				Everybody has a role to play.
			</p>
			<span class="buttons">
				<g:link controller="TekEvent" action="index">Encontre um evento</g:link>
			</span>
		</div>
		
		<div id="homecell">
			<h3>Organize um evento</h3>
			</br>
			<p>If you don't see anything that suits your interest and location,
				then why not get the ball rolling. It's easy to get started and
				there may be others out there ready to get behind you to make it
				happen.
			</p>
			<span class="buttons">
				<g:link controller="TekEvent" action="create">Organize um evento</g:link>
			</span>
		</div>
		
		<div id="homecell">
			<h3>Patrocine um Evento</h3>
			</br>
			<p>If you are part of a business or organization that is involved in
				technology then sponsoring a tek event would be a great way to
				let the community know that you're there and you're involved.
			</p>
			<span class="buttons">
				<g:link controller="Patrocinador" action="create">Patrocine um evento</g:link>
			</span>		
		</div>
	</body>
</html>
