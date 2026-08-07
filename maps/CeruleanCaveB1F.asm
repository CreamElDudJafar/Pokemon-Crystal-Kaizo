	object_const_def
	const CERULEAN_CAVE_B1F_POKE_BALL1
	const CERULEAN_CAVE_B1F_POKE_BALL2

CeruleanCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCaveB1FItem1:
	itemball MAX_REVIVE

CeruleanCaveB1FItem2:
	itemball MAX_REVIVE

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 11, CERULEAN_CAVE_1F, 11
	warp_event 34, 15, CERULEAN_CAVE_1F, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FItem1, EVENT_CERULEAN_CAVE_B1F_MAX_REVIVE_1
	object_event 22,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FItem2, EVENT_CERULEAN_CAVE_B1F_MAX_REVIVE_2
