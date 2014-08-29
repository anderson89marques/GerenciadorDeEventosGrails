package com.br.quickstart



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PatrocinadorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Patrocinador.list(params), model:[patrocinadorInstanceCount: Patrocinador.count()]
    }

    def show(Patrocinador patrocinadorInstance) {
        respond patrocinadorInstance
    }

    def create() {
        respond new Patrocinador(params)
    }

    @Transactional
    def save(Patrocinador patrocinadorInstance) {
        if (patrocinadorInstance == null) {
            notFound()
            return
        }

        if (patrocinadorInstance.hasErrors()) {
            respond patrocinadorInstance.errors, view:'create'
            return
        }

        patrocinadorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'patrocinador.label', default: 'Patrocinador'), patrocinadorInstance.id])
                redirect patrocinadorInstance
            }
            '*' { respond patrocinadorInstance, [status: CREATED] }
        }
    }

    def edit(Patrocinador patrocinadorInstance) {
        respond patrocinadorInstance
    }

    @Transactional
    def update(Patrocinador patrocinadorInstance) {
        if (patrocinadorInstance == null) {
            notFound()
            return
        }

        if (patrocinadorInstance.hasErrors()) {
            respond patrocinadorInstance.errors, view:'edit'
            return
        }

        patrocinadorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Patrocinador.label', default: 'Patrocinador'), patrocinadorInstance.id])
                redirect patrocinadorInstance
            }
            '*'{ respond patrocinadorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Patrocinador patrocinadorInstance) {

        if (patrocinadorInstance == null) {
            notFound()
            return
        }

        patrocinadorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Patrocinador.label', default: 'Patrocinador'), patrocinadorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'patrocinador.label', default: 'Patrocinador'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
