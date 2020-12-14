CC = sdcc
CFLAGS = -mstm8 --opt-code-size --max-allocs-per-node 25000
AS = sdasstm8
ASFLAGS = -o
LD = sdldstm8
LDFLAGS = -n
SOURCES = \
	erase.c \
	erase_32k.c \
	erase_128k.c \
	write.c \
	common.c \
	common.h \
	patch_l.s
OBJDIR = obj
OBJECTS = $(patsubst %,$(OBJDIR)/%.rel,$(basename $(filter %.c %.s,$(SOURCES))))
LINKDIR = link
# TODO: use $(wildcard ...) to auto-populate this list from link dir contents?
LINKTARGETS = \
	$(LINKDIR)/ver_128k_2.0.lk \
	$(LINKDIR)/ver_128k_2.1.lk \
	$(LINKDIR)/ver_128k_2.2.lk \
	$(LINKDIR)/ver_128k_2.4.lk \
	$(LINKDIR)/ver_32k_1.0.lk \
	$(LINKDIR)/ver_32k_1.2.lk \
	$(LINKDIR)/ver_32k_1.3.lk \
	$(LINKDIR)/ver_32k_1.4.lk \
	$(LINKDIR)/verL_8k_1.0.lk
LINKCOMMON = \
	$(LINKDIR)/common.lk
BINDIR = bin
BINARIES = $(patsubst $(LINKDIR)/%.lk,$(BINDIR)/erase_write_%.ihx,$(LINKTARGETS))
ifeq ($(OS),Windows_NT)
	RM = cmd.exe /C del /Q
	MKDIRFLAGS =
else
	RM = rm -fr
	MKDIRFLAGS = -p
endif

.PHONY: all clean

all: $(BINARIES)

$(BINARIES): $(LINKCOMMON) $(LINKTARGETS) $(OBJECTS) $(BINDIR)
	$(LD) $(LDFLAGS) -i $@ -f $(LINKDIR)/common.lk -f $(LINKDIR)/$(patsubst erase_write_%.ihx,%.lk,$(notdir $@))
ifeq ($(OS),Windows_NT)
	check-seg-size.bat $(BINDIR)/$(basename $(@F)).map
else
	awk -f ./check-seg-size.awk $(BINDIR)/$(basename $(@F)).map
endif

$(OBJECTS): $(SOURCES) $(OBJDIR)

$(OBJDIR)/%.rel: %.c
	$(CC) $(CFLAGS) -o $@ -c $(basename $(<F)).c

$(OBJDIR)/%.rel: %.s
	$(AS) $(ASFLAGS) $@ $(basename $(<F)).s

$(OBJDIR):
	mkdir $(MKDIRFLAGS) $(OBJDIR)

$(BINDIR):
	mkdir $(MKDIRFLAGS) $(BINDIR)

clean:
	$(RM) $(OBJDIR)
	$(RM) $(BINDIR)
