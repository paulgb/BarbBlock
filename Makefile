
# Generate everything: extension and blacklists.
all : all_blacklists BarbBlock.txt package

# Generically generate standalone blacklist files.
blacklists/%.txt : src/generate_blacklist.py blacklist.yaml templates/%.txt.tmpl
	python $^ $@

# Generate files related to the extension.
extension/% : src/generate_blacklist.py blacklist.yaml templates/extension-%.tmpl
	python $^ $@

# Package the extension as a zip.
package : extension/manifest.json extension/barbblock.js
	cd extension; zip barbblock.zip -r ./ -x *.git*
	mv extension/barbblock.zip ./

# Build all of the standalone files.
all_blacklists : \
	blacklists/adblock-plus.txt \
	blacklists/hosts-file.txt \
	blacklists/ublock-origin.txt \
	blacklists/domain-list.txt

# Copy the ublock blacklist to /BarbBlock.txt for legacy reasons.
BarbBlock.txt : blacklists/ublock-origin.txt
	cp $< $@
