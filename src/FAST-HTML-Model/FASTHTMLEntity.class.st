"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `attributeOwner` | `FASTHTMLEntity` | `childrenNodes` | `FASTHTMLAttribute` | |
| `documentOwner` | `FASTHTMLEntity` | `childrenNodes` | `FASTHTMLDocument` | |
| `elementOwner` | `FASTHTMLEntity` | `childrenNodes` | `FASTHTMLElement` | |
| `endTagOwner` | `FASTHTMLEntity` | `childrenNode` | `FASTHTMLEndTag` | |
| `erroneousEndTagOwner` | `FASTHTMLEntity` | `childrenNode` | `FASTHTMLErroneousEndTag` | |
| `genericParent` | `FASTHTMLEntity` | `genericChildren` | `FASTHTMLEntity` | |
| `quotedAttributeValueOwner` | `FASTHTMLEntity` | `childrenNode` | `FASTHTMLQuotedAttributeValue` | |
| `scriptElementOwner` | `FASTHTMLEntity` | `childrenNodes` | `FASTHTMLScriptElement` | |
| `selfClosingTagOwner` | `FASTHTMLEntity` | `childrenNodes` | `FASTHTMLSelfClosingTag` | |
| `startTagOwner` | `FASTHTMLEntity` | `childrenNodes` | `FASTHTMLStartTag` | |
| `styleElementOwner` | `FASTHTMLEntity` | `childrenNodes` | `FASTHTMLStyleElement` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericChildren` | `FASTHTMLEntity` | `genericParent` | `FASTHTMLEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTHTMLEntity',
	#superclass : 'MooseEntity',
	#traits : 'FASTTEntity + TEntityMetaLevelDependency',
	#classTraits : 'FASTTEntity classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#attributeOwner => FMOne type: #FASTHTMLAttribute opposite: #childrenNodes',
		'#documentOwner => FMOne type: #FASTHTMLDocument opposite: #childrenNodes',
		'#elementOwner => FMOne type: #FASTHTMLElement opposite: #childrenNodes',
		'#endTagOwner => FMOne type: #FASTHTMLEndTag opposite: #childrenNode',
		'#erroneousEndTagOwner => FMOne type: #FASTHTMLErroneousEndTag opposite: #childrenNode',
		'#genericChildren => FMMany type: #FASTHTMLEntity opposite: #genericParent',
		'#genericParent => FMOne type: #FASTHTMLEntity opposite: #genericChildren',
		'#quotedAttributeValueOwner => FMOne type: #FASTHTMLQuotedAttributeValue opposite: #childrenNode',
		'#scriptElementOwner => FMOne type: #FASTHTMLScriptElement opposite: #childrenNodes',
		'#selfClosingTagOwner => FMOne type: #FASTHTMLSelfClosingTag opposite: #childrenNodes',
		'#startTagOwner => FMOne type: #FASTHTMLStartTag opposite: #childrenNodes',
		'#styleElementOwner => FMOne type: #FASTHTMLStyleElement opposite: #childrenNodes'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLEntity class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
	<abstract>
]

{ #category : 'testing' }
FASTHTMLEntity class >> isAbstract [

	<ignoreForCoverage>
	<generated>
	^ self == FASTHTMLEntity
]

{ #category : 'meta' }
FASTHTMLEntity class >> metamodel [

	<ignoreForCoverage>
	<generated>
	^ FASTHTMLModel metamodel
]

{ #category : 'adding' }
FASTHTMLEntity >> addGenericChild: anObject [

	<ignoreForCoverage>
	<generated>
	^ self genericChildren add: anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> attributeOwner [
	"Relation named: #attributeOwner type: #FASTHTMLAttribute opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ attributeOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> attributeOwner: anObject [

	<ignoreForCoverage>
	<generated>
	attributeOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> documentOwner [
	"Relation named: #documentOwner type: #FASTHTMLDocument opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ documentOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> documentOwner: anObject [

	<ignoreForCoverage>
	<generated>
	documentOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> elementOwner [
	"Relation named: #elementOwner type: #FASTHTMLElement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ elementOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> elementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	elementOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> endTagOwner [
	"Relation named: #endTagOwner type: #FASTHTMLEndTag opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ endTagOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> endTagOwner: anObject [

	<ignoreForCoverage>
	<generated>
	endTagOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> erroneousEndTagOwner [
	"Relation named: #erroneousEndTagOwner type: #FASTHTMLErroneousEndTag opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ erroneousEndTagOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> erroneousEndTagOwner: anObject [

	<ignoreForCoverage>
	<generated>
	erroneousEndTagOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> genericChildren [
	"Relation named: #genericChildren type: #FASTHTMLEntity opposite: #genericParent"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ genericChildren
]

{ #category : 'accessing' }
FASTHTMLEntity >> genericChildren: anObject [

	<ignoreForCoverage>
	<generated>
	genericChildren value: anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> genericParent [
	"Relation named: #genericParent type: #FASTHTMLEntity opposite: #genericChildren"

	<ignoreForCoverage>
	<generated>
	<container>
	^ genericParent
]

{ #category : 'accessing' }
FASTHTMLEntity >> genericParent: anObject [

	<ignoreForCoverage>
	<generated>
	genericParent := anObject
]

{ #category : 'testing' }
FASTHTMLEntity >> hasImmediateSource [

	<ignoreForCoverage>
	<generated>
	^ false
]

{ #category : 'testing' }
FASTHTMLEntity >> isQueryable [

	<generated>
	^ false
]

{ #category : 'accessing' }
FASTHTMLEntity >> quotedAttributeValueOwner [
	"Relation named: #quotedAttributeValueOwner type: #FASTHTMLQuotedAttributeValue opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ quotedAttributeValueOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> quotedAttributeValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	quotedAttributeValueOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> scriptElementOwner [
	"Relation named: #scriptElementOwner type: #FASTHTMLScriptElement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ scriptElementOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> scriptElementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	scriptElementOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> selfClosingTagOwner [
	"Relation named: #selfClosingTagOwner type: #FASTHTMLSelfClosingTag opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ selfClosingTagOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> selfClosingTagOwner: anObject [

	<ignoreForCoverage>
	<generated>
	selfClosingTagOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> startTagOwner [
	"Relation named: #startTagOwner type: #FASTHTMLStartTag opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ startTagOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> startTagOwner: anObject [

	<ignoreForCoverage>
	<generated>
	startTagOwner := anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> styleElementOwner [
	"Relation named: #styleElementOwner type: #FASTHTMLStyleElement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ styleElementOwner
]

{ #category : 'accessing' }
FASTHTMLEntity >> styleElementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	styleElementOwner := anObject
]
