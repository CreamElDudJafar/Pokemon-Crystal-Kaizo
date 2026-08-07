	object_const_def
	const ROUTE2N_BUG_CATCHER1
	const ROUTE2N_POKE_BALL1
	const ROUTE2N_POKE_BALL2
	const ROUTE2N_POKE_BALL3
	const ROUTE2N_POKE_BALL4
	const ROUTE2N_FRUIT_TREE

Route2North_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherEd:
	trainer BUG_CATCHER, ED, EVENT_BEAT_BUG_CATCHER_ED, BugCatcherEdSeenText, BugCatcherEdBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEdAfterBattleText
	waitbutton
	closetext
	end

Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText


Route2Carbos:
	itemball CARBOS

Route2MaxPotion:
	itemball MAX_POTION

Route2FruitTree:
	fruittree FRUITTREE_ROUTE_2

Route2HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_2_HIDDEN_MAX_ETHER

Route2HiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_2_HIDDEN_FULL_HEAL


BugCatcherEdSeenText:
	text "If you walk in"
	line "tall grass wearing"

	para "shorts, do you get"
	line "nicks and cuts?"
	done

BugCatcherEdBeatenText:
	text "Ouch, ouch, ouch!"
	done

BugCatcherEdAfterBattleText:
	text "They'll really"
	line "sting when you"
	cont "take a bath."
	done

Route2DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

Route2North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 19, ROUTE_2_NUGGET_HOUSE, 1
	warp_event 18, 35, ROUTE_2_GATE, 1
	warp_event 19, 35, ROUTE_2_GATE, 2
	warp_event 14,  9, DIGLETTS_CAVE, 3
	warp_event  5, 11, VIRIDIAN_FOREST_GATE_N, 1
	warp_event  6, 11, VIRIDIAN_FOREST_GATE_N, 2

	def_coord_events

	def_bg_events
	bg_event 13, 11, BGEVENT_READ, Route2DiglettsCaveSign
	bg_event 19, 20, BGEVENT_ITEM, Route2HiddenMaxEther
	bg_event  8,  8, BGEVENT_ITEM, Route2HiddenFullHeal

	def_object_events
	object_event 13, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherEd, -1
	object_event 16,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Carbos, EVENT_ROUTE_2_CARBOS
	object_event 20, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MaxPotion, EVENT_ROUTE_2_MAX_POTION
	object_event  3,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2FruitTree, -1
