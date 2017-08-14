
all : all_blacklists BarbBlock.txt package

blacklists/%.txt : src/generate_blacklist.py blacklist.yaml templates/%.txt.tmpl
	python $^ $@

extension/% : src/generate_blacklist.py blacklist.yaml templates/extension-%.tmpl
	python $^ $@

package : extension/manifest.json extension/barbblock.js
	cd extension; zip barbblock.zip -r ./ -x *.git*
	mv extension/barbblock.zip ./

all_blacklists : blacklists/adblock-plus.txt blacklists/hosts-file.txt blacklists/ublock-origin.txt blacklists/domain-list.txt

BarbBlock.txt : blacklists/ublock-origin.txt
	cp $< $@
