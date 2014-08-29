package com.br.quickstart

import java.lang.ProcessBuilder.Redirect;

class SecurityFilters {

    def filters = {
        fazerLogin(controller:'*', action:'*') {
            before = {
				if(!controllerName) 
					return true
					
				def allowedAction = ["show", "index", "login", "validate", "search"]	
				if( !session.user && !allowedAction.contains(actionName) ) {
					redirect( controller: "TekUser", action: "login", params: [cName: controllerName, aName: actionName] )
					return false 
				}	
            }
        }
    }
}
