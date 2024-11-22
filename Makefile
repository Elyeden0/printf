NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_printf.c tools.c tools2.c
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
