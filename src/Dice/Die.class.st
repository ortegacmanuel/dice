Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'instance creation' }
Die class >> withFaces: anInteger [ 

	|d|
	d := self new.
	d faces: 	anInteger.
	^ d
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [		
	
	super initialize.
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: '(' , faces printString;
		nextPutAll: ')'
]

{ #category : #operations }
Die >> roll [
	
	^ faces atRandom
]
