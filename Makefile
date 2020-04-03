SRC = ft_read.asm ft_strdup.asm ft_strlen.asm ft_strcmp.asm ft_write.asm ft_strcpy.asm
BONUS = $(wildcard *_bonus.asm)
OBJ = $(SRC:%.asm=%.o)
BONUS_OBJ = $(BONUS:%.asm=%.o)
NAME = libasm.a

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

bonus: $(BONUS_OBJ)
	ar rc $(NAME) $(BONUS_OBJ)

%.o: %.asm
	nasm -f macho64 $^

clean:
	rm -rf $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean
	make
