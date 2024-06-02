all: clean build

clean:
	go clean

build:
	protoc -I . --go_out . --go_opt module=github.com/bw-saurabh-game/goProtos --go-grpc_out . --go-grpc_opt module=github.com/bw-saurabh-game/goProtos ./proto/*.proto
