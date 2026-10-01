"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTHTMLScriptElement` | `scriptElementOwner` | `FASTHTMLEntity` | |



"
Class {
	#name : 'FASTHTMLScriptElement',
	#superclass : 'FASTHTMLEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTHTMLEntity opposite: #scriptElementOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLScriptElement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ScriptElement super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTHTMLScriptElement >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTHTMLScriptElement >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTHTMLEntity opposite: #scriptElementOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTHTMLScriptElement >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
