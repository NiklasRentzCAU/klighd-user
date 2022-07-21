/*
 * KIELER - Kiel Integrated Environment for Layout Eclipse RichClient
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 * 
 * Copyright 2019,2020 by
 * + Kiel University
 *   + Department of Computer Science
 *     + Real-Time and Embedded Systems Group
 * 
 * This code is provided under the terms of the Eclipse Public License (EPL).
 */
package de.cau.cs.nre.test.klighdUser

import de.cau.cs.kieler.klighd.lsp.launch.AbstractLanguageServer
import de.cau.cs.kieler.klighd.standalone.KlighdStandaloneSetup

/**
 * Entry point for the language server application for the KIELER Pragmatics project based around the KGraph language.
 * 
 * @see AbstractLanguageServer
 * @author nre
 */
class PragmaticsLanguageServer extends AbstractLanguageServer {
    
    def static void main(String[] args) {
        try {
            KlighdStandaloneSetup.initialize();
            
            val server = new PragmaticsLanguageServer
            server.configureAndRun(new PragmaticsLanguageRegistration, new PragmaticsLsCreator)
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }
    
}