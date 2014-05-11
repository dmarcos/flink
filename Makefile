RUSTC               = rustc
SRC_DIR             = src
BIN_DIR             = bin
EXAMPLES_BIN_DIR    = $(BIN_DIR)/examples
EXAMPLE_FILES       = $(SRC_DIR)/examples/*.rs

all: examples

examples-dir:
	mkdir -p $(EXAMPLES_BIN_DIR)

$(EXAMPLE_FILES): examples-dir
	$(RUSTC) --out-dir=$(EXAMPLES_BIN_DIR) $@

examples: $(EXAMPLE_FILES)

clean:
	rm -rf $(BIN_DIR)