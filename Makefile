SRC = $(wildcard *.s)
OBJ = $(SRC:%.s=%.o)
NAME = libasm.a

all: $(NAME)

$(NAME): $(OBJ) main.c
	ar rc $(NAME) $(OBJ)
	gcc -g $(NAME) main.c

%.o: %.s
	nasm -f macho64 $^

clean:
	rm -rf $(OBJ)