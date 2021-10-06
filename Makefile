.PHONY: docker-multiarch
docker-multiarch:
	docker buildx build --platform linux/arm64/v8,linux/amd64 --output type=registry -t qmachines/kubectl-alpine:1.22 .

