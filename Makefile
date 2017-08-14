
all : all_blacklists BarbBlock.txt

blacklists/% : src/generate_blacklist.py blacklist.json templates/%.tmpl
	python $^ $@

package :
	cd extension; zip barbblock.zip -r ./ -x *.git*
	mv extension/barbblock.zip ./

all_blacklists : blacklists/adblock-plus.txt blacklists/hosts-file.txt blacklists/ublock-origin.txt blacklists/domain-list.txt

BarbBlock.txt : blacklists/ublock-origin.txt
	cp $< $@
