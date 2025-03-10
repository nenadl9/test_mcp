# Makefile for MCP Server project

.PHONY: install build watch clean test inspect all

# Default target
all: install build

# Install dependencies
install:
	npm install

# Build the project
build:
	npm run build

# Watch for changes
watch:
	npm run watch

# Clean build artifacts
clean:
	rm -rf build/
	rm -rf node_modules/

# Run the inspector
inspect:
	npm run inspector

# Install and build in one command
setup: install build

# Help command
help:
	@echo "Available commands:"
	@echo "  make install  - Install dependencies"
	@echo "  make build   - Build the project"
	@echo "  make watch   - Watch for changes"
	@echo "  make clean   - Clean build artifacts"
	@echo "  make inspect - Run the MCP inspector"
	@echo "  make setup   - Install and build"
	@echo "  make all     - Default: install and build"
	@echo "  make help    - Show this help message"