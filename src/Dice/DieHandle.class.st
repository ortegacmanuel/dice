Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #initialization }
DieHandle >> + aDieHandle [
	
	| handle |
	handle := self class new.
	self dice do: [ :each	| handle 	addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle
]

{ #category : #accessing }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [ 

	^ dice
]

{ #category : #accessing }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	super initialize.
	dice := OrderedCollection new
	
]

{ #category : #initialization }
DieHandle >> maxValue [ 

	^ (dice collect: [ :each | each faces ]) sumNumbers
	
]

{ #category : #initialization }
DieHandle >> roll [ 

	^ (dice collect: [ :each | each roll ]) sumNumbers
	
]
