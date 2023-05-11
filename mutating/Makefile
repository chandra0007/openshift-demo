REGISTRY=quay.io/pbastide_rh/openshift-demo

all: build
.PHONY: all

cross-build-linux-arm64:
	+@podman build --platform linux/arm64 -t ${REGISTRY}:mutating-webhook-arm64 -f Dockerfile
.PHONY: cross-build-linux-arm64

cross-build-linux-amd64:
	+@podman build --platform linux/amd64 -t ${REGISTRY}:mutating-webhook-amd64 -f Dockerfile
.PHONY: cross-build-linux-amd64

cross-build-linux-ppc64le:
	+@podman build --platform linux/ppc64le -t ${REGISTRY}:mutating-webhook-ppc64le -f Dockerfile
.PHONY: cross-build-linux-ppc64le

cross-build: cross-build-linux-amd64 cross-build-linux-ppc64le
	+@podman 
.PHONY: cross-build

build-image:
	+@podman build -t ${REGISTRY}:mutating-webhook-amd64 -f Dockerfile
.PHONY: cross-build-linux-amd64

build: fmt vet ## Build binary
	go build -o bin/mac-mutating cmd/webhook/main.go
.PHONY: build

fmt: ## Run go fmt against code.
	go fmt ./...
.PHONY: fmt

vet: ## Run go vet against code.
	go vet ./...
.PHONY: vet

clean:
	$(RM) ./bin/mac-mutating
.PHONY: clean