SHELL=/bin/bash

OUTDIR=website
SERVEDIR=public
ROOT=/wiki/

FILTER=filter.py
TEMPLATE=template.html
SERVETEMPLATE=serve.html

REPO=https://github.com/CUCyber/wiki

HIGHLIGHT_STYLE=tango
SERVE=serve.py

WEBSITE=../website
SITE=

SOURCES!=find * \( -path '__pycache__' -o -path "$(OUTDIR)" -o -path "$(SERVEDIR)" -o -path "$(FILTER)" -o -path "$(TEMPLATE)" -o -path "$(SERVETEMPLATE)" -o -path "$(SERVE)" \) -prune -o -type f -a -not \( -name 'makefile' -o -name 'LICENSE.md' -o -name 'README.md' \) -print

all: $(OUTDIR)$(ROOT)

website: $(WEBSITE)$(SITE)$(ROOT)

serve: $(SERVEDIR)$(ROOT)
	"./$(SERVE)" "$(SERVEDIR)"

update: $(WEBSITE)$(SITE)$(ROOT)
	git -C "$(WEBSITE)" add ".$(SITE)$(ROOT)"
	git -C "$(WEBSITE)" commit -m "update wiki"
	git -C "$(WEBSITE)" push

clean:
	rm -rf "$(OUTDIR)"
	rm -rf "$(SERVEDIR)"

$(OUTDIR)$(ROOT): $(SOURCES)
	mkdir -p $(OUTDIR)$(ROOT)
	for file in $?; do \
		rm -rf "$(OUTDIR)$(ROOT)$${file%.md}"; \
		mkdir -p $$(dirname "$(OUTDIR)$(ROOT)$${file}"); \
		if [ "$${file: -3}" == .md ]; then \
			pandoc --filter="$(FILTER)" --template="$(TEMPLATE)" --highlight-style="${HIGHLIGHT_STYLE}" --standalone --toc --output "$(OUTDIR)$(ROOT)$${file%.md}.html" --metadata=root:"$(ROOT)" --metadata=path:"$$(dirname "$$file")" --metadata=file:"$${file%.md}" --metadata=repo:"$(REPO)" "$${file}"; \
		else \
			cp "$${file}" "$(OUTDIR)$(ROOT)$${file}"; \
		fi \
	done
	touch "$(OUTDIR)$(ROOT)"

$(SERVEDIR)$(ROOT): $(SOURCES)
	mkdir -p $(SERVEDIR)$(ROOT)
	for file in $?; do \
		rm -rf "$(SERVEDIR)$(ROOT)$${file%.md}"; \
		mkdir -p $$(dirname "$(SERVEDIR)$(ROOT)$${file}"); \
		if [ "$${file: -3}" == .md ]; then \
			pandoc --filter="$(FILTER)" --template="$(SERVETEMPLATE)" --highlight-style="${HIGHLIGHT_STYLE}" --standalone --toc --output "$(SERVEDIR)$(ROOT)$${file%.md}.html" --metadata=root:"$(ROOT)" --metadata=path:"$$(dirname "$$file")" --metadata=file:"$${file%.md}" --metadata=repo:"$(REPO)" "$${file}"; \
		else \
			cp "$${file}" "$(SERVEDIR)$(ROOT)$${file}"; \
		fi \
	done
	touch "$(SERVEDIR)$(ROOT)"

$(WEBSITE)$(SITE)$(ROOT): $(OUTDIR)$(ROOT)
	rsync -av --delete "$(OUTDIR)$(ROOT)" "$(WEBSITE)$(SITE)$(ROOT)"
	touch "$(WEBSITE)$(SITE)$(ROOT)"

.PHONY: all website serve update clean
