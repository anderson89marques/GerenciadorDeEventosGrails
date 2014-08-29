package com.br.quickstart



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TekMessageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		
		def lista
		def cont
		def evento = TekEvent.get(params.id)
		if(evento){
			println params.toString()
			
			lista = TekMessage.findAllByEvento(evento,params)
			if(lista){
				cont = lista.size()
			}else {
				lista = TekMessage.list(params)
				cont = lista.size()
			}
			
		} 
		
        render view:"ajaxIndex", model:[tekMessageInstanceList:lista, tekMessageInstanceCount: cont, evento:evento]
    }

    def show(TekMessage tekMessageInstance) {
        respond tekMessageInstance
    }
	
	def showDetail() {
		def tekMessageInstance = TekMessage.get(params.id)
		if(tekMessageInstance) {
			render(template: "details", model: [tekMessageInstance: tekMessageInstance])	
		}else {
			render "Não foi encontrada mensagem com o id: ${params.id}"
		}
	}

	def reply = {
		println params.toString()
		def pai = TekMessage.get(params.id)
		def tekMessageInstance = new TekMessage(parent:pai, evento: pai.evento,subject:"RE: ${ pai.subject }")
		render view: "create", model: ['tekMessageInstance': tekMessageInstance]
	}
	
    def create() {
        respond new TekMessage(params)
    }

    @Transactional
    def save(TekMessage tekMessageInstance) {
        if (tekMessageInstance == null) {
            notFound()
            return
        }

        if (tekMessageInstance.hasErrors()) {
            respond tekMessageInstance.errors, view:'create'
            return
        }

        tekMessageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tekMessage.label', default: 'TekMessage'), tekMessageInstance.id])
                redirect tekMessageInstance
            }
            '*' { respond tekMessageInstance, [status: CREATED] }
        }
    }

    def edit(TekMessage tekMessageInstance) {
        respond tekMessageInstance
    }

    @Transactional
    def update(TekMessage tekMessageInstance) {
        if (tekMessageInstance == null) {
            notFound()
            return
        }

        if (tekMessageInstance.hasErrors()) {
            respond tekMessageInstance.errors, view:'edit'
            return
        }

        tekMessageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TekMessage.label', default: 'TekMessage'), tekMessageInstance.id])
                redirect tekMessageInstance
            }
            '*'{ respond tekMessageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TekMessage tekMessageInstance) {

        if (tekMessageInstance == null) {
            notFound()
            return
        }

        tekMessageInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TekMessage.label', default: 'TekMessage'), tekMessageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tekMessage.label', default: 'TekMessage'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
