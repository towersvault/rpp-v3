_BlaineBattleText::
	text "Hah!"

	para "I am Blaine! I"
	line "am the Leader of"
	cont "Cinnabar Gym!"

	para "My fiery #mon"
	line "will incinerate"
	cont "all challengers!"

	para "Hah! You better"
	line "have Burn Heal!"
	done

_BlaineEndBattleText::
	text "I've burnt out!"

	para "You have earned"
	line "the VolcanoBadge!@@"

_BlaineFireBlastText::
	text "Fire Blast is the"
	line "ultimate fire"
	cont "technique!"

	para "Don't waste it on"
	line "water #mon!"
	done

_BlaineBadgeText::
	text "Hah!"

IF DEF(_HARD)
	text "The VolcanoBadge"
	line "puts you another"
	cont "step closer to"
	cont "Victory Road!"
ELSE
	para "The VolcanoBadge"
	line "heightens the"
	cont "Special abilities"
	cont "of your #mon!"
ENDC
	para "Here, you can"
	line "have this too!"
	done

_ReceivedTM38Text::
	text "[PLAYER] received"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_TM38ExplanationText::
	db $0
	para "TM38 contains"
	line "Fire Blast!"

	para "Teach it to fire-"
	line "type #mon!"

	para "Charmeleon or"
	line "Ponyta would be"
	cont "good bets!"
	done

_TM38NoRoomText::
	text "Make room for my"
	line "gift!"
	done

_CinnabarGymText_7595f::
	text "Do you know how"
	line "hot #mon fire"
	cont "breath can get?"
	done

_CinnabarGymText_75964::
	text "Yow!"
	line "Hot, hot, hot!"
	prompt

_CinnabarGymText_75969::
	text "Fire, or to be"
	line "more precise,"
	cont "combustion..."

	para "Blah, blah, blah,"
	line "blah..."
	done

_CinnabarGymText_75994::
	text "I was a thief, but"
	line "I became straight"
	cont "as a trainer!"
	done

_CinnabarGymText_75999::
	text "I surrender!"
	prompt

_CinnabarGymText_7599e::
	text "I can't help"
	line "stealing other"
	cont "people's #mon!"
	done

_CinnabarGymText_759c9::
	text "You can't win!"
	line "I have studied"
	cont "#mon totally!"
	done

_CinnabarGymText_759ce::
	text "Waah!"
	line "My studies!"
	prompt

_CinnabarGymText_759d3::
	text "My theories are"
	line "too complicated"
	cont "for you!"
	done

_CinnabarGymText_759fe::
	text "I just like using"
	line "fire #mon!"
	done

_CinnabarGymText_75a03::
	text "Too hot to"
	line "handle!"
	prompt

_CinnabarGymText_75a08::
	text "I wish there was"
	line "a thief #mon!"
	cont "I'd use that!"
	done

_CinnabarGymText_75a33::
	text "I know why Blaine"
	line "became a trainer!"
	done

_CinnabarGymText_75a38::
	text "Ow!"
	prompt

_CinnabarGymText_75a3d::
	text "Blaine was lost"
	line "in the mountains"
	cont "when a fiery bird"
	cont "#mon appeared."

	para "Its light enabled"
	line "Blaine to find"
	cont "his way down!"
	done

_CinnabarGymText_75a68::
	text "I've been to many"
	line "Gyms, but this is"
	cont "my favorite!"
	done

_CinnabarGymText_75a6d::
	text "Yowza!"
	line "Too hot!"
	prompt

_CinnabarGymText_75a72::
	text "Us fire #mon"
	line "fans like Ponyta"
	cont "and Ninetales!"
	done

_CinnabarGymText_75a9d::
	text "Fire is weak"
	line "against H2O!"
	done

_CinnabarGymText_75aa2::
	text "Oh!"
	line "Snuffed out!"
	prompt

_CinnabarGymText_75aa7::
	text "Water beats fire!"
	line "But, fire melts"
	cont "ice #mon!"
	done

_CinnabarGymText_75ac2::
	text "Yo! Champ in"
	line "making!"

	para "The hot-headed"
	line "Blaine is a fire"
	cont "#mon pro!"

	para "Douse his spirits"
	line "with water!"

	para "You better take"
	line "some Burn Heal!"
	done

_CinnabarGymText_75ac7::
	text "[PLAYER]! You beat"
	line "that fire brand!"
	done
