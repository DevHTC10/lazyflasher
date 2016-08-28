VERSION := 2.3

ZIP := samsung-antiroot-removal-$(VERSION).zip

EXCLUDE := Makefile README.md *.git*

all: $(ZIP)

$(ZIP):
	@echo "Creating ZIP: $(ZIP)"
	@zip -r9 "$@" . -x $(EXCLUDE)
	@echo "Generating SHA1..."
	@sha1sum "$@" > "$@.sha1"
	@cat "$@.sha1"
	@echo "Done."

clean:
	@rm -f "$(ZIP)" "$(ZIP).sha1"
	@echo "Done."
