CONTAINER_NAME=adriano_dotfiles_playground


run_image: build_container
	docker run -it --rm $(CONTAINER_NAME) zsh

build_container: 
	docker build -f ./Dockerfile -t $(CONTAINER_NAME) ..
