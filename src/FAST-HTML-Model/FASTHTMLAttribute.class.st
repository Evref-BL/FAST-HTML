"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTHTMLAttribute` | `attributeOwner` | `FASTHTMLEntity` | |



"
Class {
	#name : 'FASTHTMLAttribute',
	#superclass : 'FASTHTMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTHTMLEntity opposite: #attributeOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLAttribute class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Attribute super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTHTMLAttribute >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTHTMLAttribute >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTHTMLEntity opposite: #attributeOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTHTMLAttribute >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
