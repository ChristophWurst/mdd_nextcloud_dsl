package com.nextcloud.ui.quickfix

import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.model.edit.IModificationContext
import org.eclipse.xtext.ui.editor.model.edit.ISemanticModification
import com.nextcloud.appDSL.CustomAttribute

class AttributeNameShortener implements ISemanticModification {

	override apply(EObject element, IModificationContext context) throws Exception {
		if (element instanceof CustomAttribute) {
			(element as CustomAttribute).name = (element as CustomAttribute).name.substring(0, 32);
		}
	}
}
