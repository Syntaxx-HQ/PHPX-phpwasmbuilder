target "default" {
	output = ["type=local,dest=./build"]
	tags = ["php-wasm"]
}

target "vrzno" {
	context = "."
	dockerfile = "DockerfileVrzno"
	output = ["type=local,dest=./build"]
	tags = ["php-wasm-vrzno"]
}

target "standard" {
	context = "."
	dockerfile = "Dockerfile"
	output = ["type=local,dest=./build"]
	tags = ["php-wasm-standard"]
}
