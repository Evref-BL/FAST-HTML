Class {
	#name : 'FASTHTMLImporter',
	#superclass : 'TSFASTAbstractImporter',
	#category : 'FAST-HTML-Tools',
	#package : 'FAST-HTML-Tools'
}

{ #category : 'accessing' }
FASTHTMLImporter class >> extensions [
	"File extensions without the dot that the importer handles"

	^ #( 'html' 'htm' )
]

{ #category : 'as yet unclassified' }
FASTHTMLImporter >> importToFAST: tsTree usingSourceCode: aString [

	| tsLanguage importer |
	
	"needs cleaning"
	
	tsLanguage := TSLanguage html.
	importer := TSFASTImporter new.
	importer tsLanguage: tsLanguage.
	importer languageName: 'HTML'.
	importer originString: aString. 
	
	^ importer import: tsTree .
]

{ #category : 'as yet unclassified' }
FASTHTMLImporter >> tsLanguage [

	^ TSLanguage html
]
