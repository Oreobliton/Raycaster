.DEFAULT_GOAL := build_and_run


build_and_run: build run
run:
	./main
build:
	gcc main.c -lglut -lGL -o main
debug:
	gcc main.c -oO -lglut -lGL -o debug

