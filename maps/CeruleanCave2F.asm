	object_const_def
	const CERULEAN_CAVE_2F_POKE_BALL1
	const CERULEAN_CAVE_2F_POKE_BALL2

CeruleanCave2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCave2FItem1:
	itemball NUGGET

CeruleanCave2FItem2:
	itemball NUGGET

CeruleanCave2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26, 15, CERULEAN_CAVE_1F, 2
	warp_event 24,  9, CERULEAN_CAVE_1F, 3
	warp_event 18,  2, CERULEAN_CAVE_1F, 4
	warp_event 19, 17, CERULEAN_CAVE_1F, 5
	warp_event  3, 15, CERULEAN_CAVE_1F, 6
	warp_event  7,  9, CERULEAN_CAVE_1F, 7
	warp_event  9,  5, CERULEAN_CAVE_1F, 8
	warp_event  5,  7, CERULEAN_CAVE_1F, 9
	warp_event 34,  7, CERULEAN_CAVE_1F, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event 34, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FItem1, EVENT_CERULEAN_CAVE_2F_NUGGET_1
	object_event  6, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FItem2, EVENT_CERULEAN_CAVE_2F_NUGGET_2
