_BeachHousePikachuText::
	text "PUKA: Pika-pi!"
	done
	
_BeachHouseDudeText::
	text "You know, not"
	line "every PIKACHU"
	cont "knows how to SURF"
	cont "like mine."
	
	para "But today is your"
	line "lucky day!"
	
	para "Hmm? Oh, sorry, I"
	line "forgot to intro-"
	cont "duce myself."
	prompt
	
_BeachHouseOldManText::
	text "Oof, I spent too"
	line "long in the sun."
	
	para "I need to rest..."
	done

_BeachHouseGiveSurfText::
	text "Yo! What's up?"
	
	para "Want something to"
	line "give you the"
	cont "edge in battle?"
	
	para "Check this out!"
	prompt

_ReceivedTM15Text::
	text "[PLAYER] received"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_TM15ExplanationText::
	text "TM15 teaches"
	line "HYPER BEAM!"

	para "It's a powerful"
	line "move, but your"
	cont "#MON has to"
	cont "recharge after"
	cont "using it."
	done

_TM15NoRoomText::
	text "Whoa, hold up!"
	
	para "You don't have"
	line "room for this"
	cont "sweet TM!"
	done
