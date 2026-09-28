"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTHTMLDocument` | `documentOwner` | `FASTHTMLEntity` | |

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `element` | `FamixTSourceAnchor` | `sourceAnchor` | `FamixTSourceEntity` | Enable the accessibility to the famix entity that this class is a source pointer for|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `source` | `String` | nil | Actual source code of the source entity|
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTHTMLDocument',
	#superclass : 'FASTHTMLEntity',
	#traits : '(FASTTEntity + FamixTHasImmediateSource withPrecedenceOf: FamixTHasImmediateSource)',
	#classTraits : '(FASTTEntity classTrait + FamixTHasImmediateSource classTrait withPrecedenceOf: FamixTHasImmediateSource classTrait)',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTHTMLEntity opposite: #documentOwner'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLDocument class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Document super: #FASTHTMLEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
]

{ #category : 'adding' }
FASTHTMLDocument >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTHTMLDocument >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTHTMLEntity opposite: #documentOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTHTMLDocument >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
