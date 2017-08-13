
blacklists/% : src/generate_blacklist.py blacklist.json templates/%.tmpl
	python $^ $@

package :
	cd extension; zip barbblock.zip -r ./ -x *.git*
	mv extension/barbblock.zip ./
