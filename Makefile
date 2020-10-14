# Starts the server with hot reloading
devserver:
	hugo server -D --navigateToChanged

browse:
	firefox localhost:1313

build:
	hugo
# docs/ is the only non-root folder that GitHub Pages accepts to serve
	-rm -rf docs/
	mv public/ docs/

relserver: build
	cd docs/ && python -m SimpleHTTPServer 1313

deploy:
	git add docs/
	git commit -m 'New deployment'
	git push
