SHELL=/bin/bash

OUTDIR=public
ROOT=/wiki/

FILTER=filter.py
TEMPLATE=template.html

HIGHLIGHT_STYLE=tango
SERVE=serve.py

WEBSITE=../website
SITE=/_site

SOURCES!=find * \( -path '__pycache__' -o -path "$(OUTDIR)" -o -path "$(FILTER)" -o -path "$(TEMPLATE)" -o -path "$(SERVE)" \) -prune -o -type f -a -not \( -name 'makefile' -o -name 'LICENSE.md' -o -name 'README.md' \) -print

all: $(OUTDIR)$(ROOT)

website: $(WEBSITE)$(SITE)$(ROOT)

serve: $(OUTDIR)$(ROOT) $(OUTDIR)/images/ $(OUTDIR)/fonts/ $(OUTDIR)/css/ $(OUTDIR)/js/
	"./$(SERVE)" "$(OUTDIR)"

update: $(WEBSITE)$(SITE)$(ROOT)
	git -C "$(WEBSITE)" add ".$(SITE)$(ROOT)"
	git -C "$(WEBSITE)" commit -m "update wiki"
	git -C "$(WEBSITE)" push

clean:
	rm -rf "$(OUTDIR)"

$(OUTDIR)$(ROOT): $(SOURCES)
	mkdir -p $(OUTDIR)$(ROOT)
	for file in $?; do \
		rm -rf "$(OUTDIR)$(ROOT)$${file%.md}"; \
		mkdir -p $$(dirname "$(OUTDIR)$(ROOT)$${file}"); \
		if [ "$${file: -3}" == .md ]; then \
			pandoc --filter="$(FILTER)" --template="$(TEMPLATE)" --highlight-style="${HIGHLIGHT_STYLE}" --standalone --toc --output "$(OUTDIR)$(ROOT)$${file%.md}.html" --metadata=root:"$(ROOT)" --metadata=path:"$$(dirname $$file)" --metadata=file:"$${file%.md}" "$${file}"; \
		else \
			cp "$${file}" "$(OUTDIR)$(ROOT)$${file}"; \
		fi \
	done
	touch "$(OUTDIR)$(ROOT)"

$(OUTDIR)/%/: $(WEBSITE)$(SITE)/%/
	rsync -av --delete "$^" "$@"
	touch "$@"

$(WEBSITE)$(SITE)$(ROOT): $(OUTDIR)$(ROOT)
	rsync -av --delete "$(OUTDIR)$(ROOT)" "$(WEBSITE)$(SITE)$(ROOT)"
	touch "$(WEBSITE)$(SITE)$(ROOT)"

.PHONY: all website serve update clean
