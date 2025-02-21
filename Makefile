.PHONY: frontend backend infra run build clean install test

frontend:
	cd apps/frontend && npm install && npm run dev

backend:
	cd apps/backend && go run cmd/main.go

build:
	cd apps/frontend && npm run build
	cd apps/backend && go build -o bin/backend cmd/main.go

run:
	docker-compose up --build

clean:
	rm -rf apps/backend/bin
	rm -rf apps/frontend/dist
	rm -rf infrastructure/.pulumi
	rm -rf infrastructure/bin

install:
	cd apps/frontend && npm install
	cd apps/backend && go mod tidy
	cd infrastructure && go mod tidy

test:
	cd apps/backend && go test ./...
	cd apps/frontend && npm test

isetup:
	cd infrastructure && go mod tidy

iprev:
	cd infrastructure && pulumi preview

iup:
	cd infrastructure && pulumi up --yes

idown:
	cd infrastructure && pulumi destroy --yes
