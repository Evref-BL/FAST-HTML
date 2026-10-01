Class {
	#name : 'FASTHTMLMetamodelGenerator',
	#superclass : 'FamixMetamodelGenerator',
	#instVars : [
		'entity',
		'_ERROR',
		'tEntity',
		'attribute',
		'attributeName',
		'attributeValue',
		'comment',
		'doctype',
		'document',
		'element',
		'endTag',
		'erroneousEndTag',
		'erroneousEndTagName',
		'quotedAttributeValue',
		'rawText',
		'scriptElement',
		'selfClosingTag',
		'startTag',
		'styleElement',
		'tagName',
		'text'
	],
	#category : 'FAST-HTML-Model-Generator',
	#package : 'FAST-HTML-Model-Generator'
}

{ #category : 'accessing' }
FASTHTMLMetamodelGenerator class >> packageName [

	^ #'FAST-HTML-Model'
]

{ #category : 'accessing' }
FASTHTMLMetamodelGenerator class >> prefix [

	^ #FASTHTML
]

{ #category : 'accessing' }
FASTHTMLMetamodelGenerator class >> submetamodels [

	^ { FASTMetamodelGenerator }
]

{ #category : 'definition' }
FASTHTMLMetamodelGenerator >> defineClasses [
	super defineClasses.
	entity := builder newClassNamed: #Entity.
	_ERROR := builder newClassNamed: #ERROR.
	attribute := builder newClassNamed: #Attribute.
	attributeName := builder newClassNamed: #AttributeName.
	attributeValue := builder newClassNamed: #AttributeValue.
	comment := builder newClassNamed: #Comment.
	doctype := builder newClassNamed: #Doctype.
	document := builder newClassNamed: #Document.
	element := builder newClassNamed: #Element.
	endTag := builder newClassNamed: #EndTag.
	erroneousEndTag := builder newClassNamed: #ErroneousEndTag.
	erroneousEndTagName := builder newClassNamed: #ErroneousEndTagName.
	quotedAttributeValue := builder newClassNamed: #QuotedAttributeValue.
	rawText := builder newClassNamed: #RawText.
	scriptElement := builder newClassNamed: #ScriptElement.
	selfClosingTag := builder newClassNamed: #SelfClosingTag.
	startTag := builder newClassNamed: #StartTag.
	styleElement := builder newClassNamed: #StyleElement.
	tagName := builder newClassNamed: #TagName.
	text := builder newClassNamed: #Text.
]

{ #category : 'definition' }
FASTHTMLMetamodelGenerator >> defineHierarchy [
	"define class hierarchy"
	super defineHierarchy.
	entity --|> tEntity.
	entity --|> #TEntityMetaLevelDependency.

	_ERROR --|> #THasImmediateSource.

	document --|> tEntity.
	document --|> #THasImmediateSource.
	document withPrecedenceOf: #THasImmediateSource.


]

{ #category : 'definition' }
FASTHTMLMetamodelGenerator >> defineRelations [
	super defineRelations.

	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').


	" ATTRIBUTE (COLLECTION) "
	((attribute property: #childrenNodes) comment: '')
		<>-* ((entity property: #attributeOwner) comment: '').


	" DOCUMENT (COLLECTION) "
	((document property: #childrenNodes) comment: '')
		<>-* ((entity property: #documentOwner) comment: '').


	" ELEMENT (COLLECTION) "
	((element property: #childrenNodes) comment: '')
		<>-* ((entity property: #elementOwner) comment: '').


	" END_TAG (SINGLE CHILD) "
	((endTag property: #childrenNode) comment: '')
		<>- ((entity property: #endTagOwner) comment: '').


	" ERRONEOUS_END_TAG (SINGLE CHILD) "
	((erroneousEndTag property: #childrenNode) comment: '')
		<>- ((entity property: #erroneousEndTagOwner) comment: '').


	" QUOTED_ATTRIBUTE_VALUE (SINGLE CHILD) "
	((quotedAttributeValue property: #childrenNode) comment: '')
		<>- ((entity property: #quotedAttributeValueOwner) comment: '').


	" SCRIPT_ELEMENT (COLLECTION) "
	((scriptElement property: #childrenNodes) comment: '')
		<>-* ((entity property: #scriptElementOwner) comment: '').


	" SELF_CLOSING_TAG (COLLECTION) "
	((selfClosingTag property: #childrenNodes) comment: '')
		<>-* ((entity property: #selfClosingTagOwner) comment: '').


	" START_TAG (COLLECTION) "
	((startTag property: #childrenNodes) comment: '')
		<>-* ((entity property: #startTagOwner) comment: '').


	" STYLE_ELEMENT (COLLECTION) "
	((styleElement property: #childrenNodes) comment: '')
		<>-* ((entity property: #styleElementOwner) comment: '').


]

{ #category : 'definition' }
FASTHTMLMetamodelGenerator >> defineTraits [
	super defineTraits.
	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.
]
