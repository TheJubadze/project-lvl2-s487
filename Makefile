install:
	npm install

clean:
	if [ -d "node_modules" ]; then rm -r node_modules; fi

reinstall: clean install

publish:
	npm publish --dry-run

gendif:
	npx babel-node src/bin/gendiff.js -h