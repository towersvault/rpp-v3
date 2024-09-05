_CinnabarIslandText8::
	text "The door is"
	line "locked..."
	done

_CinnabarIslandText1::
	text "CINNABAR GYM's"
	line "BLAINE is an odd"
	cont "man who has lived"
	cont "here for decades."
	done

_CinnabarIslandText2::
	db 8
	ld a, 5
	ld [wWhichTrade], a
	callba MoveTutorScript
	jp TextScriptEnd

_CinnabarIslandText3::
	text "CINNABAR ISLAND"
	
	para "The fiery town of"
	line "burning desire"
	done

_CinnabarIslandText6::
	text "#MON Lab"
	done

_CinnabarIslandText7::
	text "CINNABAR ISLAND"
	line "#MON GYM"
	cont "LEADER: BLAINE"

	para "The hot-headed"
	line "quiz master!"
	done
