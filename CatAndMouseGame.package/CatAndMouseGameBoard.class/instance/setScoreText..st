game
setScoreText: aScore
	
	| font aText aString |
	font  :=  (TextFontReference toFont:  (TTCFont familyName: 'BitstreamVeraSans' pointSize: 18 emphasis: 0)).
	aString := 'Score: ', aScore printString.
	aText := aString asText addAttribute: font; addAttribute: (TextColor color: Color black).
	scoreMorph contents: aText. 