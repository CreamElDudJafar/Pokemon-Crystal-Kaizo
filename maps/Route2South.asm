	object_const_def
	const ROUTE2S_BUG_CATCHER_ROB
	const ROUTE2S_BUG_CATCHER_DOUG
	const ROUTE2S_DIRE_HIT
	const ROUTE2S_ELIXER

Route2South_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherRob:
	trainer BUG_CATCHER, ROB, EVENT_BEAT_BUG_CATCHER_ROB, BugCatcherRobSeenText, BugCatcherRobBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRobAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

Route2Sign:
	jumptext Route2SignText
Route2DireHit:
	itemball DIRE_HIT
Route2Elixer:
	itemball ELIXER

Route2HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_2_HIDDEN_FULL_RESTORE

Route2HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_2_HIDDEN_REVIVE

BugCatcherRobSeenText:
	text "My bug #MON are"
	line "tough. Prepare to"
	cont "lose!"
	done
BugCatcherRobBeatenText:
	text "I was whipped…"
	done
BugCatcherRobAfterBattleText:
	text "I'm going to look"
	line "for stronger bug"
	cont "#MON."
	done
BugCatcherDougSeenText:
	text "Why don't girls"
	line "like bug #MON?"
	done
BugCatcherDougBeatenText:
	text "No good!"
	done
BugCatcherDougAfterBattleText:
	text "Bug #MON squish"
	line "like plush toys"
	para "when you squeeze"
	line "their bellies."
	done
Route2SignText:
	text "ROUTE 2"
	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done

Route2South_MapEvents:
	db 0, 0
	def_warp_events
	warp_event 17,  1, ROUTE_2_GATE, 3
	warp_event  5,  5, VIRIDIAN_FOREST_GATE_S, 3
	def_coord_events
	def_bg_events
	bg_event  7, 27, BGEVENT_READ, Route2Sign
	bg_event  5, 25, BGEVENT_ITEM, Route2HiddenFullRestore
	bg_event 13, 30, BGEVENT_ITEM, Route2HiddenRevive
	def_object_events
	; Rob and Doug guard the only maze route south.
	object_event 16,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherRob, -1
	object_event 12, 26, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherDoug, -1
	object_event 15,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2DireHit, EVENT_ROUTE_2_DIRE_HIT
	object_event 15, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Elixer, EVENT_ROUTE_2_ELIXER
