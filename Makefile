.PHONY: clean

PACKAGE=*.tar.xz
PACKAGE-SOURCE=*.src.tar.gz

all: $(PACKAGE) $(PACKAGE-SOURCE)

$(PACKAGE):
	updpkgsums
	makepkg
	mksrcinfo

$(PACKAGE-SOURCE):
	makepkg --source

install: $(PACKAGE)
	pacman -U $<

clean:
	rm *.tar.xz
	rm *.tar.gz
	rm -r src pkg

