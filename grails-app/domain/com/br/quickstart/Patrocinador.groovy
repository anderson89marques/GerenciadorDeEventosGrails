package com.br.quickstart

class Patrocinador {
	String nome
	String website
	String description
	byte[] logo
	static hasMany = [eventos : TekEvent, patrocinadorships : Patrocinadorship]
	static belongsTo = TekEvent
	
	static constraints = {
		nome blank: false
		website blank: false, url: true
		description nullable: true, maxSize: 5000
		logo nullable: true, maxSize: 1000000
		patrocinadorships: nullable: true
	}
	
	
	String toString() {
		nome
	}
    
}
