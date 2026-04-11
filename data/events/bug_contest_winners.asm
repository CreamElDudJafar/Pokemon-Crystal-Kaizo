BugContestantPointers:
	table_width 2
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw PINECO,     527
	dbw BEEDRILL,   612
	dbw YANMA,      562

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw VENOMOTH,   663
	dbw BUTTERFREE, 585
	dbw BEEDRILL,   595

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCIZOR,     993
	dbw FORRETRESS, 929
	dbw HERACROSS,  688

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw HERACROSS,  682
	dbw SCYTHER,    672
	dbw ARIADOS,    617

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dbw PARASECT,   582
	dbw BUTTERFREE, 584
	dbw PINECO,     527

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw PINSIR,     672
	dbw PINECO,     527
	dbw LEDIAN,     612

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw LEDIAN,     617
	dbw BUTTERFREE, 600
	dbw YANMA,      527

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SCYTHER,    672
	dbw YANMA,      548
	dbw ARIADOS,    617

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw YANMA,      561
	dbw PINSIR,     671
	dbw PARASECT,   582

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw ARIADOS,    618
	dbw VENOMOTH,   662
	dbw BEEDRILL,   592
