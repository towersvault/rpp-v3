ifneq ($(wildcard rgbds/.*),)
RGBDS_DIR = rgbds/
else
RGBDS_DIR =
endif

rom_obj := \
	audio.o \
	main.o \
	text.o \
	wram.o \

pokered_obj := $(rom_obj:.o=_red.o)
pokeblue_obj := $(rom_obj:.o=_blue.o)

### Build tools

MD5 := md5sum -c

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink

### Build targets

.SUFFIXES:
.SECONDEXPANSION:
# Suppress annoying intermediate file deletion messages.
.PRECIOUS: %.2bpp
.PHONY: all clean red blue compare tools

roms := pokered.gbc pokeblue.gbc

all: $(roms)
red: pokered.gbc
blue: pokeblue.gbc

# For contributors to make sure a change didn't affect the contents of the rom.
compare: red blue
	@$(MD5) roms.md5

clean:
	rm -f $(roms) $(pokered_obj) $(pokeblue_obj) $(roms:.gbc=.sym)
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' -o -iname '*.pic' \) -exec rm {} +
	$(MAKE) clean -C tools/

tools:
	$(MAKE) -C tools/

RGBASMFLAGS = -Weverything
rgbdscheck.o: rgbdscheck.asm
	$(RGBASM) -o $@ $<

RGBASMFLAGS += -h
# -h makes it so that a nop instruction is NOT automatically added by the compiler after every halt instruction
# -Weverything makes the compiler print all applicable warnings

# Additional RGBASM Flags can be configured when building this ROM
# _ORIGINALINTRO restores the original copyright intro of RED/BLUE. Disabled by default to still give credit to Mateo/Luna.
# _SNOW builds a ROM with the snowy tileset.
# _HARD creates a ROM with HARD difficulty.
# _TRAINERREMATCH enables the ability to rematch trainers.

$(pokered_obj):  RGBASMFLAGS += -D _RED -D _TRAINERREMATCH
$(pokeblue_obj): RGBASMFLAGS += -D _BLUE -D _TRAINERREMATCH

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
define DEP
$1: $2 $$(shell tools/scan_includes $2) | rgbdscheck.o
	$$(RGBASM) $$(RGBASMFLAGS) -o $$@ $$<
endef

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tools,$(MAKECMDGOALS)))
$(info $(shell $(MAKE) -C tools))

# Dependencies for objects (drop _red and _blue and etc from asm file basenames)
$(foreach obj, $(pokered_obj), $(eval $(call DEP,$(obj),$(obj:_red.o=.asm))))
$(foreach obj, $(pokeblue_obj), $(eval $(call DEP,$(obj),$(obj:_blue.o=.asm))))

endif

%.asm: ;

# %_red.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
# $(pokered_obj): %_red.o: %.asm $$(dep)
# 	$(RGBDS_DIR)rgbasm -D _RED -h -o $@ $*.asm

# %_blue.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
# $(pokeblue_obj): %_blue.o: %.asm $$(dep)
# 	$(RGBDS_DIR)rgbasm -D _BLUE -h -o $@ $*.asm

pokered_opt  = -Cjv -k 01 -l 0x33 -m 0x1B -p 0 -r 03 -t "POKEMON RED"
pokeblue_opt = -Cjv -k 01 -l 0x33 -m 0x1B -p 0 -r 03 -t "POKEMON RED"

%.gbc: $$(%_obj)
	$(RGBDS_DIR)rgblink -n $*.sym -o $@ $^
	$(RGBDS_DIR)rgbfix $($*_opt) $@
	sort $*.sym -o $*.sym

gfx/blue/intro_purin_1.6x6.2bpp: rgbgfx += -Z
gfx/blue/intro_purin_2.6x6.2bpp: rgbgfx += -Z
gfx/blue/intro_purin_3.6x6.2bpp: rgbgfx += -Z
gfx/red/intro_nido_1.6x6.2bpp: rgbgfx += -Z
gfx/red/intro_nido_2.6x6.2bpp: rgbgfx += -Z
gfx/red/intro_nido_3.6x6.2bpp: rgbgfx += -Z

gfx/game_boy.norepeat.2bpp: tools/gfx += --remove-duplicates
gfx/theend.interleave.2bpp: tools/gfx += --interleave --png=$<
gfx/tilesets/%.2bpp: tools/gfx += --trim-whitespace

%.png: ;

%.2bpp: %.png
	rgbgfx $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)
%.1bpp: %.png
	rgbgfx -d1 $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)
%.pic:  %.2bpp
	tools/pkmncompress $< $@
