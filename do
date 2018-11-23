develop()
{
	echo 'Development version available on http://localhost:4000'
	docker run \
		--rm \
		--interactive \
		--tty \
		--volume $PWD:/srv/jekyll \
		--volume /tmp/jekyll-blog:/usr/local/bundle \
		--publish 35729:35729 \
		--publish 4000:4000 \
		jekyll/jekyll:3.8 \
		jekyll serve --draft --livereload
}

${@:-develop}
