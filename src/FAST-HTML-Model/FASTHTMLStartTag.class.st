"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTHTMLStartTag` | `startTagOwner` | `FASTHTMLEntity` | |



"
Class {
	#name : 'FASTHTMLStartTag',
	#superclass : 'FASTHTMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTHTMLEntity opposite: #startTagOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLStartTag class >> annotation [

	<ignoreForCoverage>
	<FMClass: #StartTag super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTHTMLStartTag >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTHTMLStartTag >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTHTMLEntity opposite: #startTagOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTHTMLStartTag >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
