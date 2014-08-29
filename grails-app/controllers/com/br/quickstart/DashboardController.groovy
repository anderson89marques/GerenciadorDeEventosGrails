package com.br.quickstart

class DashboardController {

    def index() { }
	
	def dashboard(){
		TekEvent evento = TekEvent.get(params.id)
		
		if(evento){
			if( evento.organizador.nomeCompleto == session.user.nomeCompleto ||
				evento.voluntarios.collect { it.nomeCompleto }.contains(session.user.nomeCompleto) ) {
				def tarefas = Tarefa.findAllByEventoAndCompletada(evento,false, [max:3,sort:"dueDate",order:"asc"])
				def voluntarios = evento.voluntarios
				def mensagens = TekMessage.findAllByEventoAndParentIsNull(evento,[sort:"id",order:"desc"])
				def patrocinadorship = evento.patrocinadorships
				return [event:evento, tarefas:tarefas, voluntarios:voluntarios, mensagens:mensagens, patrocinadorship:patrocinadorship]
			}else {
				flash.message = "Acesso negado para dashboard do ${evento.nome}"
				redirect( controller:"tekEvent" , action:"index")
			}
		}else{
			flash.message = "Evento com id ${params.id} não encontrado"
			redirect(controller:"tekEvent", action:"index")
		}
		
	}
}
