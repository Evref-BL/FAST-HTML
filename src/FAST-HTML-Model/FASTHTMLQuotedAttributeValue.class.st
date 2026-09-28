"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTHTMLQuotedAttributeValue` | `quotedAttributeValueOwner` | `FASTHTMLEntity` | |



"
Class {
	#name : 'FASTHTMLQuotedAttributeValue',
	#superclass : 'FASTHTMLEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTHTMLEntity opposite: #quotedAttributeValueOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLQuotedAttributeValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #QuotedAttributeValue super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTHTMLQuotedAttributeValue >> childrenNode [
	"Relation named: #childrenNode type: #FASTHTMLEntity opposite: #quotedAttributeValueOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTHTMLQuotedAttributeValue >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
