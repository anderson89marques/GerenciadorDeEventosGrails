package com.br.quickstart



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PatrocinadorshipController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Patrocinadorship.list(params), model:[patrocinadorshipInstanceCount: Patrocinadorship.count()]
    }

    def show(Patrocinadorship patrocinadorshipInstance) {
        respond patrocinadorshipInstance
    }

    def create() {
        respond new Patrocinadorship(params)
    }

    @Transactional
    def save(Patrocinadorship patrocinadorshipInstance) {
        if (patrocinadorshipInstance == null) {
            notFound()
            return
        }

        if (patrocinadorshipInstance.hasErrors()) {
            respond patrocinadorshipInstance.errors, view:'create'
            return
        }

        patrocinadorshipInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'patrocinadorship.label', default: 'Patrocinadorship'), patrocinadorshipInstance.id])
                redirect patrocinadorshipInstance
            }
            '*' { respond patrocinadorshipInstance, [status: CREATED] }
        }
    }

    def edit(Patrocinadorship patrocinadorshipInstance) {
        respond patrocinadorshipInstance
    }

    @Transactional
    def update(Patrocinadorship patrocinadorshipInstance) {
        if (patrocinadorshipInstance == null) {
            notFound()
            return
        }

        if (patrocinadorshipInstance.hasErrors()) {
            respond patrocinadorshipInstance.errors, view:'edit'
            return
        }

        patrocinadorshipInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Patrocinadorship.label', default: 'Patrocinadorship'), patrocinadorshipInstance.id])
                redirect patrocinadorshipInstance
            }
            '*'{ respond patrocinadorshipInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Patrocinadorship patrocinadorshipInstance) {

        if (patrocinadorshipInstance == null) {
            notFound()
            return
        }

        patrocinadorshipInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Patrocinadorship.label', default: 'Patrocinadorship'), patrocinadorshipInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'patrocinadorship.label', default: 'Patrocinadorship'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
