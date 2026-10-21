DRAFT = draft-mauch-bgp-nh-mtu-00
XML   = $(DRAFT).xml
TXT   = $(DRAFT).txt
HTML  = $(DRAFT).html

XML2RFC ?= xml2rfc

.PHONY: all text html clean

all: text html

text: $(TXT)

html: $(HTML)

$(TXT): $(XML)
	$(XML2RFC) --text $<

$(HTML): $(XML)
	$(XML2RFC) --html $<

clean:
	rm -f $(TXT) $(HTML)
