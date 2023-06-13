as yet unclassified
setKeyboardFocus
    | parentMorph |
    parentMorph := self owner.
    parentMorph ifNotNil: [ :board |
        board hand newKeyboardFocus: parentMorph ].