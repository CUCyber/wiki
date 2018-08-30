SHELL=/bin/bash

OUTDIR=public
ROOT=/wiki/

FILTER=./html.py
TEMPLATE=./template.html

HIGHLIGHT_STYLE=tango

WEBSITE=../website
SERVE=./serve.py

SOURCES_MD!=find * \( -path "$(OUTDIR)" \) -prune -o -type f -name '*.md' -a -not \( -name 'LICENSE.md' -o -name 'README.md' \) -print
SOURCES_IMG!=find * \( -path "$(OUTDIR)" \) -prune -o -type f -name '*.png' -print

all: md-$(OUTDIR)$(ROOT) img-$(OUTDIR)$(ROOT)

website: $(WEBSITE)$(ROOT)

serve: $(WEBSITE)$(ROOT)
	$(SERVE) $(WEBSITE)

update: $(WEBSITE)$(ROOT)
	git -C "$(WEBSITE)" add ".$(ROOT)"
	git -C "$(WEBSITE)" commit -m "update wiki"
	git -C "$(WEBSITE)" push

clean:
	rm -rf "$(OUTDIR)"

md-$(OUTDIR)$(ROOT): $(SOURCES_MD)
	mkdir -p $(OUTDIR)$(ROOT)
	for file in $?; do \
		rm -rf "$(OUTDIR)$(ROOT)$${file%.md}"; \
		mkdir -p $$(dirname "$(OUTDIR)$(ROOT)$${file}"); \
		pandoc --filter="$(FILTER)" --template="$(TEMPLATE)" --highlight-style="${HIGHLIGHT_STYLE}" --standalone --toc --output "$(OUTDIR)$(ROOT)$${file%.md}.html" --metadata=root:"$(ROOT)" --metadata=path:"$$(dirname $$file)" --metadata=file:"$${file%.md}" "$${file}"; \
	done
	touch "$(OUTDIR)$(ROOT)"

img-$(OUTDIR)$(ROOT): $(SOURCES_IMG)
	mkdir -p $(OUTDIR)$(ROOT)
	for file in $?; do \
		rm -rf "$(OUTDIR)$(ROOT)$${file}"; \
		mkdir -p $$(dirname "$(OUTDIR)$(ROOT)$${file}"); \
		cp "$${file}" "$(OUTDIR)$(ROOT)$${file}"; \
	done
	touch "$(OUTDIR)$(ROOT)"


$(WEBSITE)$(ROOT): md-$(OUTDIR)$(ROOT) img-$(OUTDIR)$(ROOT)
	rsync -av --delete "$(OUTDIR)$(ROOT)" "$(WEBSITE)$(ROOT)"

.PHONY: all website serve update clean
