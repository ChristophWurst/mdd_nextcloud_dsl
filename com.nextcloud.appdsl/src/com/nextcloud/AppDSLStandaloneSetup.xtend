/*
 * generated by Xtext 2.10.0
 */
package com.nextcloud


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class AppDSLStandaloneSetup extends AppDSLStandaloneSetupGenerated {

	def static void doSetup() {
		new AppDSLStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}
