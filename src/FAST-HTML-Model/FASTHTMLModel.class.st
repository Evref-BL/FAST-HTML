Class {
	#name : 'FASTHTMLModel',
	#superclass : 'MooseModel',
	#traits : 'FASTHTMLTEntityCreator + FASTTEntityCreator',
	#classTraits : 'FASTHTMLTEntityCreator classTrait + FASTTEntityCreator classTrait',
	#category : 'FAST-HTML-Model-Model',
	#package : 'FAST-HTML-Model',
	#tag : 'Model'
}

{ #category : 'accessing' }
FASTHTMLModel class >> allSubmetamodelsPackagesNames [

	<ignoreForCoverage>
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'FAST-Core-Model')
]

{ #category : 'meta' }
FASTHTMLModel class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Model super: #MooseModel>
	<package: #'FAST-HTML-Model'>
	<generated>
]
