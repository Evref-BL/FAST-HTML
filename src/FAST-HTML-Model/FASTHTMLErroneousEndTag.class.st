"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTHTMLErroneousEndTag` | `erroneousEndTagOwner` | `FASTHTMLEntity` | |



"
Class {
	#name : 'FASTHTMLErroneousEndTag',
	#superclass : 'FASTHTMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTHTMLEntity opposite: #erroneousEndTagOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLErroneousEndTag class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ErroneousEndTag super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTHTMLErroneousEndTag >> childrenNode [
	"Relation named: #childrenNode type: #FASTHTMLEntity opposite: #erroneousEndTagOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTHTMLErroneousEndTag >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
