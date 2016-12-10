/*
 * generated by Xtext 2.10.0
 */
package com.nextcloud.idea

import com.google.inject.Guice
import com.nextcloud.AppDSLRuntimeModule
import com.nextcloud.AppDSLStandaloneSetupGenerated
import org.eclipse.xtext.util.Modules2

class AppDSLStandaloneSetupIdea extends AppDSLStandaloneSetupGenerated {
	override createInjector() {
		val runtimeModule = new AppDSLRuntimeModule()
		val ideaModule = new AppDSLIdeaModule()
		val mergedModule = Modules2.mixin(runtimeModule, ideaModule)
		return Guice.createInjector(mergedModule)
	}
}
