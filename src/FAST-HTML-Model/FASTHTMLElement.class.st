"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTHTMLElement` | `elementOwner` | `FASTHTMLEntity` | |



"
Class {
	#name : 'FASTHTMLElement',
	#superclass : 'FASTHTMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTHTMLEntity opposite: #elementOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLElement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Element super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTHTMLElement >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTHTMLElement >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTHTMLEntity opposite: #elementOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTHTMLElement >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
