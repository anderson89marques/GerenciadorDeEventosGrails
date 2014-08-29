package com.br.quickstart

class TekDaysTagLib {
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
	
	
	def volunteerEvents = {
		if(request.getSession(false) && session.user){
			def eventos = TekEvent.createCriteria().list {
				voluntarios{
					eq('id',session.user?.id)
				}
			}
			if(eventos) {
				out << "<div style='margin-left:25px; margin-top:25px; width:85%'>"
				out << "<h3>Eventos que você está organizando</h3>"
				out << "<ol>"
				eventos.each {
					out << "<li> <a href='"
					out << "${createLink(controller:'TekEvent', action:'show', id:it.id)}'>"
					out << "${it}</a></li>"
				}
				out << "</ol>"
				out << "</div>"
			}
		}
	}
	
	def organizerEvents = {
		if(request.getSession(false) && session.user){
			def eventos = TekEvent.findAllByOrganizador(session.user)
			if(eventos) {
				out << "<div style='margin-left:25px; margin-top:25px; width:85%'>"
				out << "<h3>Eventos que você está organizando</h3>"
				out << "<ol>"
				eventos.each {
					out << "<li> <a href='"
					out << "${createLink(controller:'TekEvent', action:'show', id:it.id)}'>"
					out << "${it}</a></li>"
				}
				out << "</ol>"
				out << "</div>"
			}
		}
	}
	
	
	def messageThread = { attrs ->
		def mensagens = attrs.messages.findAll{ msg-> !msg?.parent}
		processMessage(mensagens, 0)
	}
	
	def processMessage(mensagens, indent){
		mensagens.each {msg ->
			def body = "${msg?.author} - ${msg?.subject}"
			out << "<p style='height:35; margin-left:${indent * 20}px;'>"
			out << "${remoteLink(action:'showDetail', id:msg?.id, update:'details', body)}"
			out << "</p>"
			def children = TekMessage.findAllByParent(msg)
			if(children){
				processMessage(children,indent + 1)
			}
			
		}
	}
	
	def loginToggle = {
		out << "<div style='margin: 15px 0 40px;'>"
		out << "<div style='float:right;'>"
		if (request.getSession(false) && session.user){
			out << "<span style='margin-right: 4px;'>"
			out << "Bem Vindo ${session.user}."
			out << "</span><span'>|</span><span style='margin-left:4px;'>"
			out << "<a href='${createLink(controller:'tekUser', action:'logout')}'>"
			out << " Logout </a></span>"
		} else{
			out << "<span style='margin-right:10px'>"
			out << "<a href='${createLink(controller:'tekUser', action:'login')}'>"
			out << " Login </a></span>"
		}
		out << "</div>"
		out << "</div><br/>"
	}
	
	def volunteerButton = { attrs ->
		if(request.getSession(false) && session.user){
			def user = session.user.merge()
			def evento = TekEvent.get(attrs.eventId)
			if(evento && !evento.voluntarios.contains(user)) {
				out << "<span id='volunteerSpan' class='menuButton'>"
				out << "<button id='volunteerButton'  type='button'>"
				out << "Voluntariar para esse evento"
				out << "</button>"
				out << "</span>"
			}
			
		}
		
	}
		
}
