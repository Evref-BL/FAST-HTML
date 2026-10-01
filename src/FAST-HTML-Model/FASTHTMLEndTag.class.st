"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTHTMLEndTag` | `endTagOwner` | `FASTHTMLEntity` | |



"
Class {
	#name : 'FASTHTMLEndTag',
	#superclass : 'FASTHTMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTHTMLEntity opposite: #endTagOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLEndTag class >> annotation [

	<ignoreForCoverage>
	<FMClass: #EndTag super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTHTMLEndTag >> childrenNode [
	"Relation named: #childrenNode type: #FASTHTMLEntity opposite: #endTagOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTHTMLEndTag >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
