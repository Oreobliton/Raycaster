.DEFAULT_GOAL := install
install_dir=build/
source_dir=src/

run:
	./$(install_dir)main

install:
	gcc $(source_dir)main.c -lglut -lGL -o $(install_dir)main

debug:
	gcc $(source_dir)main.c -oO -lglut -lGL -o $(install_dir)debug
	gdb ./$(install_dir)debug

clean: 
	rm $(install_dir)*

