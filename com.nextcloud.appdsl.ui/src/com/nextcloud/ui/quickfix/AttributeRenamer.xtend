package com.nextcloud.ui.quickfix

import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.model.edit.IModificationContext
import org.eclipse.xtext.ui.editor.model.edit.ISemanticModification
import com.nextcloud.appDSL.CustomAttribute

class AttributeRenamer implements ISemanticModification {

	override apply(EObject elem, IModificationContext context) throws Exception {
		var element = elem
		if (element instanceof CustomAttribute) {
			(element as CustomAttribute).name = (element as CustomAttribute).name + '_2';
		}
	}
}
