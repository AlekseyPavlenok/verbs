DIR_BIN = ./bin
DIR_BUILD = ./build
DIR_SRC = ./src
all: $(DIR_BIN)/main

$(DIR_BIN)/main: $(DIR_BUILD)/main.o $(DIR_BUILD)/develop.o $(DIR_BUILD)/menu.o
	gcc -Wall -Werror -o $(DIR_BIN)/main $(DIR_BUILD)/main.o $(DIR_BUILD)/develop.o $(DIR_BUILD)/menu.o
$(DIR_BUILD)/main.o: $(DIR_SRC)/main.c
	gcc -Wall -Werror -o $(DIR_BUILD)/main.o -c $(DIR_SRC)/main.c 
$(DIR_BUILD)/develop.o: $(DIR_SRC)/develop.c
	gcc -Wall -Werror -o $(DIR_BUILD)/develop.o -c $(DIR_SRC)/develop.c
$(DIR_BUILD)/menu.o: $(DIR_SRC)/menu.c    
	gcc -Wall -Werror -o $(DIR_BUILD)/menu.o -c $(DIR_SRC)/menu.c

test:
	$(DIR_BIN)/main

clean:
	rm $(DIR_BIN)/main
	rm $(DIR_BUILD)/main.o $(DIR_BUILD)/develop.o $(DIR_BUILD)/menu.o