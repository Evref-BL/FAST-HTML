"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTHTMLSelfClosingTag` | `selfClosingTagOwner` | `FASTHTMLEntity` | |



"
Class {
	#name : 'FASTHTMLSelfClosingTag',
	#superclass : 'FASTHTMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTHTMLEntity opposite: #selfClosingTagOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLSelfClosingTag class >> annotation [

	<ignoreForCoverage>
	<FMClass: #SelfClosingTag super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTHTMLSelfClosingTag >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTHTMLSelfClosingTag >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTHTMLEntity opposite: #selfClosingTagOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTHTMLSelfClosingTag >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
