package com.nextcloud.ui.quickfix

import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.model.edit.IModificationContext
import org.eclipse.xtext.ui.editor.model.edit.ISemanticModification
import com.nextcloud.appDSL.CustomAttribute
import com.nextcloud.appDSL.Entity

class IdAttributeRemover implements ISemanticModification {

	override apply(EObject element, IModificationContext context) throws Exception {
		if (element instanceof CustomAttribute) {
			(element.eContainer as Entity).attributes.remove(element);
		}
	}
}
