package com.br.quickstart

class TekUser {
	String nomeCompleto
	String nomeUsuario
	String password
	String email
	String website
	String bio
	
	static constraints = {
		nomeCompleto nullable: true
		nomeUsuario nullable: true
		password nullable: true
		email email: true, nullable: true
		website nullable: true
		bio nullable: true, maxSize:500
	}
	
	String toString() {
		nomeCompleto
	}
 
}
