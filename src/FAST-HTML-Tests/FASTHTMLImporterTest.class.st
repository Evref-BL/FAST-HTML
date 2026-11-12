Class {
	#name : 'FASTHTMLImporterTest',
	#superclass : 'TSFASTAbstractImporterTest',
	#category : 'FAST-HTML-Tests',
	#package : 'FAST-HTML-Tests'
}

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedAllcapsDoctype [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedAllcapsDoctype 	"

	self parse: '<!DOCTYPE html PUBLIC
  "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">;'.

	self assert: (fast allWithType: FASTHTMLDoctype) size equals: 1.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLText) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!DOCTYPE html PUBLIC
  "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<!DOCTYPE html PUBLIC
  "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLDoctype).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<!DOCTYPE html PUBLIC
  "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedCOLGROUPElementsWithoutEndTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCOLGROUPElementsWithoutEndTags 	"

	self parse: '<table>
  <colgroup>
    <col style="background-color: #0f0">
    <col span="2">
  <tr>
    <th>Lime</th>
    <th>Lemon</th>
    <th>Orange</th>
  </tr>
</table>;'.

	self assert: (fast allWithType: FASTHTMLAttribute) size equals: 2.
	self assert: (fast allWithType: FASTHTMLAttributeName) size equals: 2.
	self assert: (fast allWithType: FASTHTMLAttributeValue) size equals: 2.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 8.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 5.
	self assert: (fast allWithType: FASTHTMLQuotedAttributeValue) size equals: 2.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 8.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 13.
	self assert: (fast allWithType: FASTHTMLText) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<table>
  <colgroup>
    <col style="background-color: #0f0">
    <col span="2">
  <tr>
    <th>Lime</th>
    <th>Lemon</th>
    <th>Orange</th>
  </tr>
</table>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<table>
  <colgroup>
    <col style="background-color: #0f0">
    <col span="2">
  <tr>
    <th>Lime</th>
    <th>Lemon</th>
    <th>Orange</th>
  </tr>
</table>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 4.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<table>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'table'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<colgroup>
    <col style="background-color: #0f0">
    <col span="2">
  ' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<colgroup>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'colgroup'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<col style="background-color: #0f0">
    ' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<col style="background-color: #0f0">'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'col'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'style="background-color: #0f0"'.
						self assert: (self topEntity isOfType: FASTHTMLAttribute).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'style'.
							self assert: (self topEntity isOfType: FASTHTMLAttributeName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '"background-color: #0f0"'.
							self assert: (self topEntity isOfType: FASTHTMLQuotedAttributeValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'background-color: #0f0'.
								self assert: (self topEntity isOfType: FASTHTMLAttributeValue).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<col span="2">
  ' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<col span="2">'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'col'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'span="2"'.
						self assert: (self topEntity isOfType: FASTHTMLAttribute).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'span'.
							self assert: (self topEntity isOfType: FASTHTMLAttributeName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '"2"'.
							self assert: (self topEntity isOfType: FASTHTMLQuotedAttributeValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '2'.
								self assert: (self topEntity isOfType: FASTHTMLAttributeValue).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '<tr>
    <th>Lime</th>
    <th>Lemon</th>
    <th>Orange</th>
  </tr>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 5.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<tr>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'tr'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<th>Lime</th>'.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<th>'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'th'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Lime'.
					self assert: (self topEntity isOfType: FASTHTMLText).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '</th>'.
					self assert: (self topEntity isOfType: FASTHTMLEndTag).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'th'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<th>Lemon</th>'.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<th>'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'th'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Lemon'.
					self assert: (self topEntity isOfType: FASTHTMLText).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '</th>'.
					self assert: (self topEntity isOfType: FASTHTMLEndTag).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'th'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '<th>Orange</th>'.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<th>'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'th'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Orange'.
					self assert: (self topEntity isOfType: FASTHTMLText).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '</th>'.
					self assert: (self topEntity isOfType: FASTHTMLEndTag).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'th'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: '</tr>'.
				self assert: (self topEntity isOfType: FASTHTMLEndTag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'tr'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '</table>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'table'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<table>
  <colgroup>
    <col style="background-color: #0f0">
    <col span="2">
  <tr>
    <th>Lime</th>
    <th>Lemon</th>
    <th>Orange</th>
  </tr>
</table>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedComments [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedComments 	"

	self parse: '<!-- hello -->
<!-- world ->-> -- > ->->->-- -> still comment -->
<div>
  <!-- <span>something</span> -->
</div>;'.

	self assert: (fast allWithType: FASTHTMLComment) size equals: 3.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 2.
	self assert: (fast allWithType: FASTHTMLText) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!-- hello -->
<!-- world ->-> -- > ->->->-- -> still comment -->
<div>
  <!-- <span>something</span> -->
</div>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 4.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<!-- hello -->'.
		self assert: (self topEntity isOfType: FASTHTMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '<!-- world ->-> -- > ->->->-- -> still comment -->'.
		self assert: (self topEntity isOfType: FASTHTMLComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '<div>
  <!-- <span>something</span> -->
</div>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<div>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<!-- <span>something</span> -->'.
			self assert: (self topEntity isOfType: FASTHTMLComment).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</div>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<!-- hello -->
<!-- world ->-> -- > ->->->-- -> still comment -->
<div>
  <!-- <span>something</span> -->
</div>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedCustomTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCustomTags 	"

	self parse: '<something:different>
  <atom-text-editor mini>
    Hello
  </atom-text-editor>
</something:different>;'.

	self assert: (fast allWithType: FASTHTMLAttribute) size equals: 1.
	self assert: (fast allWithType: FASTHTMLAttributeName) size equals: 1.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 2.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 2.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 2.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 4.
	self assert: (fast allWithType: FASTHTMLText) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<something:different>
  <atom-text-editor mini>
    Hello
  </atom-text-editor>
</something:different>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<something:different>
  <atom-text-editor mini>
    Hello
  </atom-text-editor>
</something:different>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<something:different>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'something:different'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<atom-text-editor mini>
    Hello
  </atom-text-editor>' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<atom-text-editor mini>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'atom-text-editor'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'mini'.
					self assert: (self topEntity isOfType: FASTHTMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'mini'.
						self assert: (self topEntity isOfType: FASTHTMLAttributeName).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Hello'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</atom-text-editor>'.
				self assert: (self topEntity isOfType: FASTHTMLEndTag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'atom-text-editor'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</something:different>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'something:different'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<something:different>
  <atom-text-editor mini>
    Hello
  </atom-text-editor>
</something:different>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedDTAndDLElementsWithoutCloseTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDTAndDLElementsWithoutCloseTags 	"

	self parse: '<dl>
  <dt>Coffee
  <dt>Café
  <dd>Black hot drink
  <dt>Milk
  <dd>White cold drink
</dl>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 6.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 6.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 7.
	self assert: (fast allWithType: FASTHTMLText) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<dl>
  <dt>Coffee
  <dt>Café
  <dd>Black hot drink
  <dt>Milk
  <dd>White cold drink
</dl>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<dl>
  <dt>Coffee
  <dt>Café
  <dd>Black hot drink
  <dt>Milk
  <dd>White cold drink
</dl>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 7.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<dl>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'dl'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<dt>Coffee
  ' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<dt>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'dt'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Coffee'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '<dt>Café
  ' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<dt>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'dt'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Café'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '<dd>Black hot drink
  ' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<dd>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'dd'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Black hot drink'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode equals: '<dt>Milk
  ' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<dt>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'dt'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Milk'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 6).
			self assert: self topEntity sourceCode trimBoth equals: '<dd>White cold drink'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<dd>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'dd'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'White cold drink'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 7).
			self assert: self topEntity sourceCode equals: '</dl>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'dl'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<dl>
  <dt>Coffee
  <dt>Café
  <dd>Black hot drink
  <dt>Milk
  <dd>White cold drink
</dl>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedLIElementsWithoutCloseTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedLIElementsWithoutCloseTags 	"

	self parse: '<ul>
  <li>One
  <li>Two
</ul>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 3.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 3.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 4.
	self assert: (fast allWithType: FASTHTMLText) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<ul>
  <li>One
  <li>Two
</ul>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<ul>
  <li>One
  <li>Two
</ul>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 4.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<ul>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'ul'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<li>One
  ' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<li>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'li'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'One'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode trimBoth equals: '<li>Two'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<li>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'li'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'Two'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '</ul>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'ul'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<ul>
  <li>One
  <li>Two
</ul>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedLowercaseDoctype [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedLowercaseDoctype 	"

	self parse: '<!doctype html>;'.

	self assert: (fast allWithType: FASTHTMLDoctype) size equals: 1.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLText) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!doctype html>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<!doctype html>'.
		self assert: (self topEntity isOfType: FASTHTMLDoctype).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<!doctype html>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedMultipleEntitiesInTagContents [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMultipleEntitiesInTagContents 	"

	self parse: '<p>Lorem ipsum &#xA0; dolor &#xa0; sit &nbsp; amet.</p>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEntity) size equals: 3.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 2.
	self assert: (fast allWithType: FASTHTMLText) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<p>Lorem ipsum &#xA0; dolor &#xa0; sit &nbsp; amet.</p>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<p>Lorem ipsum &#xA0; dolor &#xa0; sit &nbsp; amet.</p>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 9.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<p>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Lorem ipsum'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '&#xA0;'.
			self assert: (self topEntity isOfType: FASTHTMLEntity).
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: 'dolor'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode equals: '&#xa0;'.
			self assert: (self topEntity isOfType: FASTHTMLEntity).
			stack pop.
		
			stack push: (stack top childrenNodes at: 6).
			self assert: self topEntity sourceCode equals: 'sit'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 7).
			self assert: self topEntity sourceCode equals: '&nbsp;'.
			self assert: (self topEntity isOfType: FASTHTMLEntity).
			stack pop.
		
			stack push: (stack top childrenNodes at: 8).
			self assert: self topEntity sourceCode equals: 'amet.'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 9).
			self assert: self topEntity sourceCode equals: '</p>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<p>Lorem ipsum &#xA0; dolor &#xa0; sit &nbsp; amet.</p>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedNamedEntitiesInTagContents [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNamedEntitiesInTagContents 	"

	self parse: '<p>Lorem ipsum &nbsp; dolor sit &copy; amet.</p>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEntity) size equals: 2.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 2.
	self assert: (fast allWithType: FASTHTMLText) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<p>Lorem ipsum &nbsp; dolor sit &copy; amet.</p>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<p>Lorem ipsum &nbsp; dolor sit &copy; amet.</p>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 7.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<p>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Lorem ipsum'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '&nbsp;'.
			self assert: (self topEntity isOfType: FASTHTMLEntity).
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: 'dolor sit'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode equals: '&copy;'.
			self assert: (self topEntity isOfType: FASTHTMLEntity).
			stack pop.
		
			stack push: (stack top childrenNodes at: 6).
			self assert: self topEntity sourceCode equals: 'amet.'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 7).
			self assert: self topEntity sourceCode equals: '</p>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<p>Lorem ipsum &nbsp; dolor sit &copy; amet.</p>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedNestedTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNestedTags 	"

	self parse: '<div>
  <span>a</span>
  b
  <b>c</b>
  Multi-line
  text
</div>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 3.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 3.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 3.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 6.
	self assert: (fast allWithType: FASTHTMLText) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<div>
  <span>a</span>
  b
  <b>c</b>
  Multi-line
  text
</div>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<div>
  <span>a</span>
  b
  <b>c</b>
  Multi-line
  text
</div>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 6.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<div>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<span>a</span>'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<span>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'span'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</span>'.
				self assert: (self topEntity isOfType: FASTHTMLEndTag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'span'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: 'b'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '<b>c</b>'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<b>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'c'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '</b>'.
				self assert: (self topEntity isOfType: FASTHTMLEndTag).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode equals: 'Multi-line
  text' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 6).
			self assert: self topEntity sourceCode equals: '</div>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<div>
  <span>a</span>
  b
  <b>c</b>
  Multi-line
  text
</div>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedNumericEntitiesInTagContents [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNumericEntitiesInTagContents 	"

	self parse: '<p>Lorem ipsum &#160; dolor sit &#8212; amet.</p>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEntity) size equals: 2.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 2.
	self assert: (fast allWithType: FASTHTMLText) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<p>Lorem ipsum &#160; dolor sit &#8212; amet.</p>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<p>Lorem ipsum &#160; dolor sit &#8212; amet.</p>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 7.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<p>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Lorem ipsum'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '&#160;'.
			self assert: (self topEntity isOfType: FASTHTMLEntity).
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: 'dolor sit'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode equals: '&#8212;'.
			self assert: (self topEntity isOfType: FASTHTMLEntity).
			stack pop.
		
			stack push: (stack top childrenNodes at: 6).
			self assert: self topEntity sourceCode equals: 'amet.'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 7).
			self assert: self topEntity sourceCode equals: '</p>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<p>Lorem ipsum &#160; dolor sit &#8212; amet.</p>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedOmittedEndTagsForHtmlAndHead [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedOmittedEndTagsForHtmlAndHead 	"

	self parse: '<!doctype html><html><head>;'.

	self assert: (fast allWithType: FASTHTMLDoctype) size equals: 1.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 2.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 2.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 2.
	self assert: (fast allWithType: FASTHTMLText) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<!doctype html><html><head>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<!doctype html>'.
		self assert: (self topEntity isOfType: FASTHTMLDoctype).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '<html><head>;'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<html>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'html'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<head>;'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<head>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'head'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: ';'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		stack pop.
	self assert: self topEntity source equals: '<!doctype html><html><head>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedPElementsWithoutCloseTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPElementsWithoutCloseTags 	"

	self parse: '<p>One
<div>Two</div>
<p>Three
<p>Four
<h1>Five</h1>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 5.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 2.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 5.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 7.
	self assert: (fast allWithType: FASTHTMLText) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<p>One
<div>Two</div>
<p>Three
<p>Four
<h1>Five</h1>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 6.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode trimBoth equals: '<p>One'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<p>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'One'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '<div>Two</div>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<div>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Two'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</div>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode trimBoth equals: '<p>Three'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<p>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Three'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode trimBoth equals: '<p>Four'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<p>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Four'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: '<h1>Five</h1>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<h1>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'h1'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Five'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</h1>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'h1'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 6).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<p>One
<div>Two</div>
<p>Three
<p>Four
<h1>Five</h1>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedRawTextElements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedRawTextElements 	"

	self parse: '<script>
  </s
  </sc
  </scr
  </scri
  </scrip
</script>

<style>
  </ </s </st </sty </styl
</style>

<script>
</SCRIPT>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 3.
	self assert: (fast allWithType: FASTHTMLRawText) size equals: 3.
	self assert: (fast allWithType: FASTHTMLScriptElement) size equals: 2.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 3.
	self assert: (fast allWithType: FASTHTMLStyleElement) size equals: 1.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 6.
	self assert: (fast allWithType: FASTHTMLText) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<script>
  </s
  </sc
  </scr
  </scri
  </scrip
</script>

<style>
  </ </s </st </sty </styl
</style>

<script>
</SCRIPT>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 4.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<script>
  </s
  </sc
  </scr
  </scri
  </scrip
</script>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLScriptElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<script>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'script'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '
  </s
  </sc
  </scr
  </scri
  </scrip
' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLRawText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</script>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'script'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '<style>
  </ </s </st </sty </styl
</style>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLStyleElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<style>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'style'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '
  </ </s </st </sty </styl
' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLRawText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</style>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'style'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '<script>
</SCRIPT>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLScriptElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<script>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'script'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode trimBoth equals: ''.
			self assert: (self topEntity isOfType: FASTHTMLRawText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</SCRIPT>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'SCRIPT'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<script>
  </s
  </sc
  </scr
  </scri
  </scrip
</script>

<style>
  </ </s </st </sty </styl
</style>

<script>
</SCRIPT>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedRubyAnnotationElementsWithoutCloseTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedRubyAnnotationElementsWithoutCloseTags 	"

	self parse: '<ruby>東<rb>京<rt>とう<rt>きょう</ruby>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 4.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 4.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 5.
	self assert: (fast allWithType: FASTHTMLText) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<ruby>東<rb>京<rt>とう<rt>きょう</ruby>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<ruby>東<rb>京<rt>とう<rt>きょう</ruby>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 6.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<ruby>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'ruby'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '東'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '<rb>京'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<rb>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'rb'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '京'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '<rt>とう'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<rt>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'rt'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'とう'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode equals: '<rt>きょう'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<rt>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'rt'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'きょう'.
				self assert: (self topEntity isOfType: FASTHTMLText).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 6).
			self assert: self topEntity sourceCode equals: '</ruby>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'ruby'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<ruby>東<rb>京<rt>とう<rt>きょう</ruby>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedTRTDAndTHElementsWithoutEndTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTRTDAndTHElementsWithoutEndTags 	"

	self parse: '<table>
  <tr>
    <th>One
    <th>Two
  <tr>
    <td>Three
    <td>Four
</table>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 7.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 7.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 8.
	self assert: (fast allWithType: FASTHTMLText) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<table>
  <tr>
    <th>One
    <th>Two
  <tr>
    <td>Three
    <td>Four
</table>;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<table>
  <tr>
    <th>One
    <th>Two
  <tr>
    <td>Three
    <td>Four
</table>' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 4.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<table>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'table'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<tr>
    <th>One
    <th>Two
  ' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<tr>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'tr'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<th>One
    ' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<th>'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'th'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'One'.
					self assert: (self topEntity isOfType: FASTHTMLText).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '<th>Two
  ' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<th>'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'th'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Two'.
					self assert: (self topEntity isOfType: FASTHTMLText).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '<tr>
    <td>Three
    <td>Four
' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<tr>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'tr'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '<td>Three
    ' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<td>'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'td'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Three'.
					self assert: (self topEntity isOfType: FASTHTMLText).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode trimBoth equals: '<td>Four'.
				self assert: (self topEntity isOfType: FASTHTMLElement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '<td>'.
					self assert: (self topEntity isOfType: FASTHTMLStartTag).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'td'.
						self assert: (self topEntity isOfType: FASTHTMLTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'Four'.
					self assert: (self topEntity isOfType: FASTHTMLText).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '</table>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'table'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<table>
  <tr>
    <th>One
    <th>Two
  <tr>
    <td>Three
    <td>Four
</table>;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTags 	"

	self parse: '<span>Hello</span>;'.

	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 2.
	self assert: (fast allWithType: FASTHTMLText) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<span>Hello</span>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<span>Hello</span>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<span>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'span'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Hello'.
			self assert: (self topEntity isOfType: FASTHTMLText).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '</span>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'span'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<span>Hello</span>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedTagsWithAttributes [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTagsWithAttributes 	"

	self parse: '<input value=yes class="a" data-💩></input>;'.

	self assert: (fast allWithType: FASTHTMLAttribute) size equals: 3.
	self assert: (fast allWithType: FASTHTMLAttributeName) size equals: 3.
	self assert: (fast allWithType: FASTHTMLAttributeValue) size equals: 2.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 1.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLQuotedAttributeValue) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 2.
	self assert: (fast allWithType: FASTHTMLText) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<input value=yes class="a" data-💩></input>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<input value=yes class="a" data-💩></input>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<input value=yes class="a" data-💩>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'input'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'value=yes'.
				self assert: (self topEntity isOfType: FASTHTMLAttribute).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'value'.
					self assert: (self topEntity isOfType: FASTHTMLAttributeName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'yes'.
					self assert: (self topEntity isOfType: FASTHTMLAttributeValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'class="a"'.
				self assert: (self topEntity isOfType: FASTHTMLAttribute).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'class'.
					self assert: (self topEntity isOfType: FASTHTMLAttributeName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"a"'.
					self assert: (self topEntity isOfType: FASTHTMLQuotedAttributeValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'a'.
						self assert: (self topEntity isOfType: FASTHTMLAttributeValue).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'data-💩'.
				self assert: (self topEntity isOfType: FASTHTMLAttribute).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'data-💩'.
					self assert: (self topEntity isOfType: FASTHTMLAttributeName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '</input>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'input'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<input value=yes class="a" data-💩></input>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedVoidTags [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedVoidTags 	"

	self parse: '<form><img src="something.png"><br><input type=submit value=Ok /></form>;'.

	self assert: (fast allWithType: FASTHTMLAttribute) size equals: 3.
	self assert: (fast allWithType: FASTHTMLAttributeName) size equals: 3.
	self assert: (fast allWithType: FASTHTMLAttributeValue) size equals: 3.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 4.
	self assert: (fast allWithType: FASTHTMLEndTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLQuotedAttributeValue) size equals: 1.
	self assert: (fast allWithType: FASTHTMLSelfClosingTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 3.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 5.
	self assert: (fast allWithType: FASTHTMLText) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '<form><img src="something.png"><br><input type=submit value=Ok /></form>;'.
	self assert: (self topEntity isOfType: FASTHTMLDocument).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<form><img src="something.png"><br><input type=submit value=Ok /></form>'.
		self assert: (self topEntity isOfType: FASTHTMLElement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 5.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '<form>'.
			self assert: (self topEntity isOfType: FASTHTMLStartTag).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'form'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '<img src="something.png">'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<img src="something.png">'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'img'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'src="something.png"'.
					self assert: (self topEntity isOfType: FASTHTMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'src'.
						self assert: (self topEntity isOfType: FASTHTMLAttributeName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '"something.png"'.
						self assert: (self topEntity isOfType: FASTHTMLQuotedAttributeValue).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'something.png'.
							self assert: (self topEntity isOfType: FASTHTMLAttributeValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '<br>'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<br>'.
				self assert: (self topEntity isOfType: FASTHTMLStartTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'br'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: '<input type=submit value=Ok />'.
			self assert: (self topEntity isOfType: FASTHTMLElement).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '<input type=submit value=Ok />'.
				self assert: (self topEntity isOfType: FASTHTMLSelfClosingTag).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'input'.
					self assert: (self topEntity isOfType: FASTHTMLTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'type=submit'.
					self assert: (self topEntity isOfType: FASTHTMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'type'.
						self assert: (self topEntity isOfType: FASTHTMLAttributeName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'submit'.
						self assert: (self topEntity isOfType: FASTHTMLAttributeValue).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'value=Ok'.
					self assert: (self topEntity isOfType: FASTHTMLAttribute).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'value'.
						self assert: (self topEntity isOfType: FASTHTMLAttributeName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'Ok'.
						self assert: (self topEntity isOfType: FASTHTMLAttributeValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 5).
			self assert: self topEntity sourceCode equals: '</form>'.
			self assert: (self topEntity isOfType: FASTHTMLEndTag).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'form'.
				self assert: (self topEntity isOfType: FASTHTMLTagName).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText).
		stack pop.
	self assert: self topEntity source equals: '<form><img src="something.png"><br><input type=submit value=Ok /></form>;'
]

{ #category : 'tests' }
FASTHTMLImporterTest >> testGeneratedVoidTagsAtEOF [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedVoidTagsAtEOF 	"

	self parse: '<img src="something.png">;'.

	self assert: (fast allWithType: FASTHTMLAttribute) size equals: 1.
	self assert: (fast allWithType: FASTHTMLAttributeName) size equals: 1.
	self assert: (fast allWithType: FASTHTMLAttributeValue) size equals: 1.
	self assert: (fast allWithType: FASTHTMLDocument) size equals: 1.
	self assert: (fast allWithType: FASTHTMLElement) size equals: 1.
	self assert: (fast allWithType: FASTHTMLQuotedAttributeValue) size equals: 1.
	self assert: (fast allWithType: FASTHTMLStartTag) size equals: 1.
	self assert: (fast allWithType: FASTHTMLTagName) size equals: 1.
	self assert: (fast allWithType: FASTHTMLText) size equals: 1.

	stack push: fast rootEntities anyOne containedEntities first.
	self assert: self topEntity sourceCode equals: '<img src="something.png">;'.
	self assert: (self topEntity isOfType: FASTHTMLElement).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '<img src="something.png">'.
		self assert: (self topEntity isOfType: FASTHTMLStartTag).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'img'.
			self assert: (self topEntity isOfType: FASTHTMLTagName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'src="something.png"'.
			self assert: (self topEntity isOfType: FASTHTMLAttribute).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'src'.
				self assert: (self topEntity isOfType: FASTHTMLAttributeName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '"something.png"'.
				self assert: (self topEntity isOfType: FASTHTMLQuotedAttributeValue).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'something.png'.
					self assert: (self topEntity isOfType: FASTHTMLAttributeValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTHTMLText)
]

{ #category : 'as yet unclassified' }
FASTHTMLImporterTest >> topEntity [
	^ stack top 
]
