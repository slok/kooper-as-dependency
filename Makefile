

OUT_BIN := ./bin/app

.PHONY: install-deps
install-deps:
	dep ensure

build:
	go build -o $(OUT_BIN) main.go

clean:
	rm -rf $(OUT_BIN)

.PHONY: run
run: build
	$(OUT_BIN)