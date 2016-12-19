/*
 * generated by Xtext 2.10.0
 */
package com.nextcloud.ui.quickfix

import org.eclipse.xtext.ui.editor.quickfix.DefaultQuickfixProvider
import com.nextcloud.validation.AppDSLValidator
import org.eclipse.xtext.ui.editor.quickfix.Fix
import org.eclipse.xtext.validation.Issue
import org.eclipse.xtext.ui.editor.quickfix.IssueResolutionAcceptor

class AppDSLQuickfixProvider extends DefaultQuickfixProvider {

	@Fix(AppDSLValidator.INVALID_APP_NAME)
	def capitalizeName(Issue issue, IssueResolutionAcceptor acceptor) {
		acceptor.accept(issue, 'Fix name', 'Remove invalid characters.', 'upcase.png', new RegexNameFixer())
	}

	@Fix(AppDSLValidator.DUPLICATE_ATTRIBUTE_NAME)
	def renameAttribute(Issue issue, IssueResolutionAcceptor acceptor) {
		acceptor.accept(issue, 'Rename', 'Rename attribute.', 'upcase.png', new AttributeRenamer())
	}

	@Fix(AppDSLValidator.ATTRIBUTE_NAME_TOO_LONG)
	def shortenAttributeName(Issue issue, IssueResolutionAcceptor acceptor) {
		acceptor.accept(issue, 'Shorten', 'Shorten name.', 'upcase.png', new AttributeNameShortener())
	}

	@Fix(AppDSLValidator.MANUAL_ID_ATTRIBUTE)
	def preventCustomIdAttribute(Issue issue, IssueResolutionAcceptor acceptor) {
		acceptor.accept(issue, 'Remove', 'Remove this attribute.', 'upcase.png', new IdAttributeRemover())
	}
}
