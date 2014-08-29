package com.br.quickstart

class TekMessage {
	String subject
	String content
	TekMessage parent
	TekEvent evento
	TekUser author
	
	static constraints = {
		subject blank: false
		content blank: false, maxSize: 2000
		evento nullable: true
		author nullable: false
	}
	static belongsTo = TekEvent
}
