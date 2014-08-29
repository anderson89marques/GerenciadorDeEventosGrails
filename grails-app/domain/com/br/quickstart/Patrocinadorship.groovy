package com.br.quickstart

/*Essa classe é responsável por dizer que tipo de patricínio o evento recebe.
 * Nela tem o evento, o patrocionador em questão, e campos que descrevem o patrocínio
 * */
class Patrocinadorship {
	TekEvent evento
	Patrocinador patrocionador
	String tipoDeContribuicao
	String descricao
	String notas
	
	static constraints = {
		evento nullable: false
		patrocionador nullable: false
		tipoDeContribuicao inList: ["Outros","Fórum","Promoção","A/V","Dinheiro"]
		descricao nullable: true, blank: true
		notas nullable: true, blank: true, maxSize: 5000
	}
    
}
