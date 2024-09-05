_VermilionGymText_5cb72::
	text "A little word of"
	line "advice, kid!"

	para "Electricity is"
	line "sure powerful!"

	para "But, it's useless"
	line "against ground-"
	cont "type #MON!"
	done

_VermilionGymText_5cb77::
IF DEF(_HARD)
	text "The THUNDERBADGE"
	line "lets your #MON"
	cont "use FLY any time,"
	cont "kid!"
ELSE
	text "The THUNDERBADGE"
	line "cranks up your"
	cont "#MON's Speed!"

	para "It also lets your"
	line "#MON FLY any-"
	cont "time, kid!"
ENDC

	para "You're special,"
	line "kid! Take this!"
	done

_ReceivedTM24Text::
	text "[PLAYER] received "
	line "@"
	TX_RAM wcf4b
	text "!@@"

_TM24ExplanationText::
	db $0
	para "TM24 contains"
	line "THUNDERBOLT!"

	para "Teach it to an"
	line "electric #MON!"
	done

_TM24NoRoomText::
	text "Yo kid, make room"
	line "in your pack!"
	done

_ReceivedThunderbadgeText::
	text "Whoa!"

	para "You're the real"
	line "deal, kid!"

	para "Fine then, take"
	line "the THUNDERBADGE!"
	prompt

_VermilionGymBattleText1::
	text "When I was in the"
	line "ARMY, LT. SURGE"
	cont "was my strict CO!"
	done

_VermilionGymEndBattleText1::
	text "Stop!"
	line "You're very good!"
	prompt

_VermilionGymAfterBattleText1::
	text "The door won't"
	line "open?"

	para "LT. SURGE always"
	line "was cautious!"
	done

_VermilionGymBattleText2::
	text "Electric Youth!"
	
	para "Feel the power,"
	line "you see the"
	cont "energy!"
	done

_VermilionGymEndBattleText2::
	text "It's true, you"
	line "can't fight it."
	prompt

_VermilionGymAfterBattleText2::
	text "OK, I'll talk!"

	para "LT. SURGE said he"
	line "hid door switches"
	cont "inside something!"
	done

_VermilionGymBattleText3::
	text "This is no place"
	line "for kids!"
	done

_VermilionGymEndBattleText3::
	text "Wow!"
	line "Surprised me!"
	prompt

_VermilionGymAfterBattleText3::
	text "LT. SURGE set up"
	line "double locks!"
	cont "Here's a hint!"

	para "When you open the"
	line "1st lock, the 2nd"
	cont "lock is right"
	cont "next to it!"
	done

_VermilionGymText_5cbf4::
	text "Yo! Champ in"
	line "making!"

	para "LT. SURGE has a"
	line "nickname. People"
	cont "refer to him as"
	cont "the Lightning"
	cont "American!"

	para "He's an expert on"
	line "electric #MON!"

	para "Birds and water"
	line "#MON are at"
	cont "risk! Beware of"
	cont "paralysis too!"

	para "LT. SURGE is very"
	line "cautious!"

	para "You'll have to"
	line "break a code to"
	cont "get to him!"
	done

_VermilionGymText_5cbf9::
	text "Whew! That match"
	line "was electric!"
	done
