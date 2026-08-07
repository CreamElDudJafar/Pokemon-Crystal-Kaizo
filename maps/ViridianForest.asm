object_const_def
	const VIRIDIAN_FOREST_BUG_CATCHER_1
	const VIRIDIAN_FOREST_BUG_CATCHER_2
	const VIRIDIAN_FOREST_BUG_CATCHER_3

ViridianForest_MapScripts:
	def_scene_scripts
	def_callbacks

TrainerBugCatcherAbner:
	trainer BUG_CATCHER, ABNER, EVENT_BEAT_VIRIDIAN_FOREST_BUG_CATCHER_1, BugCatcherAbnerSeenText, BugCatcherAbnerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAbnerAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherEllis:
	trainer BUG_CATCHER, ELLIS, EVENT_BEAT_VIRIDIAN_FOREST_BUG_CATCHER_2, BugCatcherEllisSeenText, BugCatcherEllisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEllisAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherStacey:
	trainer BUG_CATCHER, STACEY, EVENT_BEAT_VIRIDIAN_FOREST_BUG_CATCHER_3, BugCatcherStaceySeenText, BugCatcherStaceyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherStaceyAfterBattleText
	waitbutton
	closetext
	end


BugCatcherAbnerSeenText:
	text "Hey! You have"
	line "#MON! Come on!"
	cont "Let's battle'em!"
	done

BugCatcherAbnerBeatenText:
	text "No!"
	line "CATERPIE can't"
	cont "cut it!"
	done

BugCatcherAbnerAfterBattleText:
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

BugCatcherEllisSeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

BugCatcherEllisBeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	done

BugCatcherEllisAfterBattleText:
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

BugCatcherStaceySeenText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

BugCatcherStaceyBeatenText:
	text "I give!"
	line "You're good at"
	cont "this!"
	done

BugCatcherStaceyAfterBattleText:
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"

	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

ViridianForest_MapEvents:
	db 0, 0

	def_warp_events
	warp_event  1,  3, VIRIDIAN_FOREST_GATE_N, 3
	warp_event 16, 51, VIRIDIAN_FOREST_GATE_S, 1
	warp_event 17, 51, VIRIDIAN_FOREST_GATE_S, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherAbner, -1
	object_event 27, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherEllis, -1
	object_event 29, 33, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherStacey, -1
