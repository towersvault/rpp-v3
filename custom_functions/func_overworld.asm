; @towersvault
; Ported the following over from Pokemon Shin Red

IF DEF(_TRAINERREMATCH)
TrainerRematch:
	xor a
	CheckEvent EVENT_909
	jr nz, .skip_rematch_choice
	ld hl, RematchTrainerText
	call PrintText
	call NoYesChoice
	ld a, [wCurrentMenuItem]
	and a
	ret nz
.skip_rematch_choice
	ResetEvent EVENT_909
	xor a
	ret
ENDC