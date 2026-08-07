GiveSafariBalls:
	ld a, 30
	ld [wSafariBallsRemaining], a
	ld a, HIGH(500)
	ld [wSafariTimeRemaining], a
	ld a, LOW(500)
	ld [wSafariTimeRemaining + 1], a
	ret

SafariZoneBattleScript::
	writecode VAR_BATTLETYPE, BATTLETYPE_SAFARI
	randomwildmon
	startbattle
	reloadmapafterbattle
	copybytetovar wSafariBallsRemaining
	iffalse SafariZoneOutOfBallsScript
	end

SafariZoneGameOverScript::
	playmusic MUSIC_NONE
	playsound SFX_ELEVATOR_END
	opentext
	writetext SafariZoneText_GameIsOver
	waitbutton
	closetext
	jump SafariZoneForcedExitScript

SafariZoneOutOfBallsScript::
	playmusic MUSIC_NONE
	playsound SFX_ELEVATOR_END
	opentext
	writetext SafariZoneText_OutOfBalls
	waitbutton
	closetext
	jump SafariZoneForcedExitScript

SafariZoneReturnToGateScript::
	jump SafariZoneForcedExitScript

SafariZoneForcedExitScript::
	; Keep ENGINE_SAFARI_ZONE set through the warp so the entrance
	; callback keeps the temporary exit officer (object 4) visible.
	setmapscene SAFARI_ZONE_KANTO_ENTRANCE, SCENE_SAFARI_ZONE_KANTO_ENTRANCE_LEAVE_SAFARI_EARLY
	special FadeOutToWhite
	playsound SFX_ENTER_DOOR
	waitsfx
	warpfacing DOWN, SAFARI_ZONE_KANTO_ENTRANCE, 3, 0

	turnobject 4, RIGHT
	applymovement PLAYER, .PlayerWalkOut
	applymovement 4, .OfficerWalkBack

	opentext
	writetext .GoodCatchText
	waitbutton

	; Reset the live officer objects while the textbox is still up.
	; Object 3 = normal desk officer, object 4 = temporary exit officer.
	clearflag ENGINE_SAFARI_ZONE
	setevent EVENT_SAFARI_ZONE_KANTO_ENTRANCE_OFFICER_SAFARI_GAME_ACTIVE
	clearevent EVENT_SAFARI_ZONE_KANTO_ENTRANCE_OFFICER_SAFARI_GAME_NOT_ACTIVE
	setmapscene SAFARI_ZONE_KANTO_ENTRANCE, SCENE_SAFARI_ZONE_KANTO_ENTRANCE_NOTHING
	appear 3
	disappear 4
	closetext
	end

.PlayerWalkOut:
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

.OfficerWalkBack:
	step RIGHT
	step DOWN
	step_end

.GoodCatchText:
	text "Did you get a"
	line "good catch?"

	para "We look forward to"
	line "your next visit!"
	done

SafariZoneText_GameIsOver:
	text "PA: Ding-dong!"
	para "Time's up!"
	para "Your SAFARI Game"
	line "is over!"
	done

SafariZoneText_OutOfBalls:
	text "PA: Ding-dong!"
	para "You are out of"
	line "SAFARI BALLS!"
	done
