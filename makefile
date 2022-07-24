user:
	qmk config user.keymap=destos

corne: user
	qmk config user.keyboard=crkbd/rev1

corne.keymap: corne
	-qmk new-keymap

corne.build: 
	qmk compile -kb crkbd/rev1 -km destos

link: 
	ln -sf /Users/pat/dev/keymaps/destos/ /Users/pat/qmk_firmware/keyboards/crkbd/keymaps   
	