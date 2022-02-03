build : ## build
	hugo -D -d ./dist

clean: ## clean
	rm -rf ./dist

post: ## create new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: ".*"/title: "${POST_TITLE}"/' "content/posts/${POST_NAME}.md"

help: ## help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'	
	
