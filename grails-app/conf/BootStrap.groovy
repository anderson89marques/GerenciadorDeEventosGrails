import com.br.quickstart.Patrocinador
import com.br.quickstart.Patrocinadorship
import com.br.quickstart.TekEvent
import com.br.quickstart.TekUser

class BootStrap {

    def init = { servletContext ->
		def usuario1 = new TekUser(nomeCompleto: "Anderson Marques Morais",
			nomeUsuario: "AnjoTop",
			password: "123456",
			email: "andersonoanjo18@gmail.com",
			website: "blog.anjospot.com",
			bio:''' Tem experiência em programação em C/C++, Java, Groovy, Python,
									na ferramentas grails e android  
									'''	).save(flush:true)
	
		def usuario2 = new TekUser(nomeCompleto: "Ilanna Sudária de Oliveira Ribeiro",
			nomeUsuario: "LannaTop",
			password: "123456",
			email: "lanna.tj@gmail.com",
			website: "blog.lannaspot.com",
			bio:''' Tem experiência em nada kkkkkkkkkkk...., ou seja, 	SABE DE NADA
										INOCENTE HEHEHEH.
										''' ).save(flush:true)
		def evento1 = new TekEvent(nome: "Lanna Show",
								cidade: "Belém-Pa",
								organizador: TekUser.findByNomeUsuario("AnjoTop"),
								venue: "TDB",
								dataInicio: new Date("15/07/2014"),
								dataFinal: new Date("16/07/2014"),
								descricao: ''' Nesse evento a lanna vai arrepiar,
									vai fazer um show FODA dos FODAS.
								'''	
						)
		if(!evento1.save(flush:true)){
			evento1.errors.allErrors.each {
				println "Um erro ocorreu com o Evento ${error}"
			}
		}
		
		
		def evento2 = new TekEvent(nome: "Anderson Show",
			cidade: "Belém-Pa",
			organizador: TekUser.findByNomeUsuario("LannaTop"),
			venue: "lanna putinha",
			dataInicio: new Date("18/07/2014"),
			dataFinal: new Date("19/07/2014"),
			descricao: ''' Nesse evento a lanna vai dar muito pro anderson marques morais,
									vai fazer uma FODA das FODAS.
								'''	
			)
		
		if(!evento2.save(flush:true)){
			evento2.errors.allErrors.each {
				println "Um erro ocorreu com o Evento ${error}"
			}
		}
		
		
		def g1 = TekEvent.findByNome("Lanna Show")
		g1.addToVoluntarios(new TekUser(nomeCompleto: "Volutaria 2",
			nomeUsuario: "vol",
			password: "123456",
			email: "vol.tj@gmail.com",
			website: "blog.lannaspot.com",
			bio:''' Tem experiência em nada kkkkkkkkkkk...., ou seja, 	SABE DE NADA
										INOCENTE HEHEHEH.
										''' ))
		
		g1.addToVoluntarios(new TekUser(nomeCompleto: "Voluntaria 2",
			nomeUsuario: "vol2",
			password: "123456",
			email: "vol2.tj@gmail.com",
			website: "blog.lannaspot.com",
			bio:''' Tem experiência em nada kkkkkkkkkkk...., ou seja, 	SABE DE NADA
										INOCENTE HEHEHEH.
										''' ))
		
		g1.addToInteressados("interessado1@gmail.com")
		g1.addToInteressados("interessado2@gmail.com")
		g1.addToInteressados("interessado3@gmail.com")
		g1.addToInteressados("interessado4@gmail.com")
		
		g1.save(flush:true)
		
		
		def p1 = new Patrocinador(nome:"Acception tecnolgia Limitada S/A",
								  website:"http://www.acception.com.br",
								  descricao:"Companhia de desenvolvimnto de soluçoẽs de software").save(flush:true)
		
		
		def p2 = new Patrocinador(nome:"ctic tecnolgia Limitada S/A",
		website:"http://www.ctic.com.br",
		descricao:"Companhia de desenvolvimnto de soluçoẽs de software para a ufpa").save(flush:true)
		
		def ps1 = new Patrocinadorship(evento:g1,
									   patrocinadorship: Patrocinador.findByNome("Acception tecnolgia Limitada S/A"),
									   tipoDeContribuicao:"Fórum",
									   descricao:"software").save(flush:true)
	   
		def ps2 = new Patrocinadorship(evento:g1,
									   patrocinadorship: Patrocinador.findByNome("ctic tecnolgia Limitada S/A"),
									   tipoDeContribuicao:"Fórum",
									   descricao:"software web").save(flush:true)
		
    }
    def destroy = {
    }
}
