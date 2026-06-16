draft := draft-pamtv-netconf-error-registries
REV := $(shell git tag | tail -n1 | sed '$$!d; s/$(draft)-//')
latest := $(shell [ x"$(REV)" = "x" ] && echo "00" || printf "%02d\n" "$$(( $(REV) + 1 ))")

.PHONY: all clean latest

all: latest

latest: $(draft)-$(latest).txt

$(draft)-$(latest).txt: $(draft)-$(latest).xml
	xml2rfc --text $<

%-$(latest).xml: %.md
	kramdown-rfc --v3 $< | sed "s/$(draft)-latest/$(draft)-$(latest)/" > $@

clean:
	rm -f $(draft)-*.*
