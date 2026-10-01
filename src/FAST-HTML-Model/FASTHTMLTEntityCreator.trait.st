"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FASTHTMLTEntityCreator',
	#category : 'FAST-HTML-Model-Model',
	#package : 'FAST-HTML-Model',
	#tag : 'Model'
}

{ #category : 'meta' }
FASTHTMLTEntityCreator classSide >> annotation [

	<ignoreForCoverage>
	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newAttribute [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLAttribute new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newAttributeName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLAttributeName new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newAttributeValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLAttributeValue new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newComment [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLComment new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newDoctype [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLDoctype new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newDocument [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLDocument new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newERROR [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLERROR new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newElement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLElement new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newEndTag [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLEndTag new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newErroneousEndTag [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLErroneousEndTag new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newErroneousEndTagName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLErroneousEndTagName new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newQuotedAttributeValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLQuotedAttributeValue new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newRawText [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLRawText new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newScriptElement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLScriptElement new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newSelfClosingTag [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLSelfClosingTag new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newStartTag [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLStartTag new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newStyleElement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLStyleElement new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newTagName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLTagName new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newText [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTHTMLText new
]
