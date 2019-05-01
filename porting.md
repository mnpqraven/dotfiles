steps
Basic setup
- put the .json file into kbfirmware.com for pin and other details
- qmkf
- mkdir in the qmk repo
- util/new_project.sh keyboardname

config.h and rules.mk
- change `MATRIX_ROWS` and `MATRIX_COLS` with their respective arrays in `config.h`
- double check `DIODE_DIRECTION`
- double check `BACKLIGHT_PIN`
- double check `rules.mk` with functionalities

keyboard.h
- first matrix is the physical location
- 2nd (2dim) matrix is the pic location
- hexadecimal numbering
- physical: #items on each row must be the same with the online firmware, aka check on the firmware to see if any switch is actually assigned to a different row
- also delete blank col spots

- omit the missing key (keys in the 2nd that are not in the 1st matrix), replacing them with `KC_NO`

keymap.c
- as per usual
