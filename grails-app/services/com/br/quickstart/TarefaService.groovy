package com.br.quickstart

import grails.transaction.Transactional

@Transactional
class TarefaService {

    def addTarefasDefault(tekEvent) {
		if(tekEvent.tarefas?.size() > 0){
			return  //tarefas default só serão adicionadas para novos eventos
		}
		
		tekEvent.addToTarefas( new Tarefa(titulo:"Identificar pontenciais pontos de encontro.") )
		tekEvent.addToTarefas( new Tarefa(titulo:"Verificar preço e disponibilidade de locais.") )
		tekEvent.addToTarefas( new Tarefa(titulo:"Compilar uma lista de patrocinadores") )
		tekEvent.addToTarefas( new Tarefa(titulo:"Desenhar materias de divulgação") )
		tekEvent.addToTarefas( new Tarefa(titulo:"Compilar possíveis caminhos de marketing") )
		tekEvent.addToTarefas( new Tarefa(titulo:"Localize provedor dos ganhos (de preferência local)") )
		tekEvent.save(flush:true)
    }
}
