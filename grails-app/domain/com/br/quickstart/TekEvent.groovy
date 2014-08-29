package com.br.quickstart

import java.util.Date;

class TekEvent {
	String nome
	String cidade
	TekUser organizador
	String venue
	Date dataInicio
	Date dataFinal
	String descricao
	
	static searchable = true
	
	static hasMany = [voluntarios : TekUser,
					  patrocinadores : Patrocinador,
					  patrocinadorships : Patrocinadorship,
					  tarefas : Tarefa,
					  mensagens : TekMessage,
					  interessados : String] //interessados são os emails dos usuarios anônimos que se interessarem pelo evento, no livro é respondets
	
	static constraints = {
		nome nullable: true
		cidade nullable: true
		descricao maxSize: 500
		organizador nullable: true
		venue nullable: true
		dataInicio nullable: true
		dataFinal nullable: true
		voluntarios nullable: true
		patrocinadorships: nullable: true
		tarefas nullable: true
		mensagens nullable: true
	}
	
	String toString() {
		return "$nome, $cidade"
	}
}
