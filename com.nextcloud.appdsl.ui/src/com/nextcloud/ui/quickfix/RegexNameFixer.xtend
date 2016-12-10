package com.nextcloud.ui.quickfix

import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.model.edit.IModificationContext
import org.eclipse.xtext.ui.editor.model.edit.ISemanticModification
import com.nextcloud.appDSL.App

class RegexNameFixer implements ISemanticModification {
	
	def String sanitize(String s) {
		return "wrong";
	}
	
	override apply(EObject elem, IModificationContext context) throws Exception {
		var element = elem
		if (element instanceof App) {
			(element as App).name = sanitize((element as App).name)
		}
	}
}
