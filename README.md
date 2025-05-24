# PHP WebAssembly Builder

This project provides a Docker-based build system for creating PHP WebAssembly (WASM) modules that can run PHP code directly in the browser. It supports two build variants:

1. Standard PHP WASM build
2. PHP WASM build with VRZNO extension support

## Features

- Builds PHP 8.x as WebAssembly modules
- Supports both standard and VRZNO-enabled builds
- Configurable PHP version through environment variables
- Optimized for browser usage
- Includes essential PHP extensions (json, ctype, mbstring, tokenizer)

## Prerequisites

- Docker
- Docker Buildx (for multi-target builds)

## Building

### Using Docker Buildx

```bash
# Build standard PHP WASM
docker buildx bake standard

# Build PHP WASM with VRZNO extension
docker buildx bake vrzno
```

### Using Docker directly

```bash
# Set PHP version in .env file
echo "PHP_BRANCH=PHP-8.4.7" > .env

# Build using build script
./build.sh
```

The build artifacts will be available in the `build/` directory.

## Configuration

You can customize the build by modifying the following:

- `.env` file: Set the PHP version to build
- `Dockerfile`: Configure build options and PHP extensions
- `docker-bake.hcl`: Define build targets and output settings

## Build Options

The build process supports several configuration options:

- `WASM_ENVIRONMENT`: Target environment (default: web)
- `JAVASCRIPT_EXTENSION`: Output file extension (default: mjs)
- `INITIAL_MEMORY`: Initial memory allocation (default: 256mb)
- `OPTIMIZE`: Optimization level (default: -O1)

## License

This project is open source and available under the MIT License.

## Acknowledgments

This project builds upon the work of:

