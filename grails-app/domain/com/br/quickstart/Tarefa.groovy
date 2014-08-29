package com.br.quickstart

import java.util.Date;

class Tarefa {
	String titulo
	String descricao
	TekUser atribuidoPara
	Date dueDate
	TekEvent evento
	boolean completada
	
	static constraints = {
		titulo blank: true
		descricao nullable: true, blank: true, maxSize: 5000
		atribuidoPara nullable: true
		dueDate nullable: true
		completada nullable: true
	}
	
	static belongsTo = TekEvent
}
