	object_const_def
	const CERULEAN_CAVE_1F_POKE_BALL1
	const CERULEAN_CAVE_1F_POKE_BALL2

CeruleanCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCave1FItem1:
	itemball ULTRA_BALL

CeruleanCave1FItem2:
	itemball ULTRA_BALL

CeruleanCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 31, 25, CERULEAN_CITY, 7
	warp_event 26, 15, CERULEAN_CAVE_2F, 1
	warp_event 24,  9, CERULEAN_CAVE_2F, 2
	warp_event 18,  2, CERULEAN_CAVE_2F, 3
	warp_event 19, 17, CERULEAN_CAVE_2F, 4
	warp_event  3, 15, CERULEAN_CAVE_2F, 5
	warp_event  7,  9, CERULEAN_CAVE_2F, 6
	warp_event  9,  5, CERULEAN_CAVE_2F, 7
	warp_event  5,  7, CERULEAN_CAVE_2F, 8
	warp_event 34,  7, CERULEAN_CAVE_2F, 9
	warp_event  3, 11, CERULEAN_CAVE_B1F, 1
	warp_event 34, 13, CERULEAN_CAVE_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FItem1, EVENT_CERULEAN_CAVE_1F_ULTRA_BALL_1
	object_event 12, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FItem2, EVENT_CERULEAN_CAVE_1F_ULTRA_BALL_2
