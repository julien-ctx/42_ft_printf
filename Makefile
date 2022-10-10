SRCS = ft_printf.c \
		ft_type_check.c \
		ft_print_nb.c \
		ft_print_char.c \
		ft_print_str.c \
		ft_print_unsigned.c \
		ft_print_hex.c \
		ft_print_ptr.c \
		ft_printer.c \
		$(addprefix libft/, ft_atoi.c ft_bzero.c ft_calloc.c ft_convert_hex.c ft_convert_hex_up.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c ft_lstlast.c ft_lstmap.c ft_lstnew.c ft_lstsize.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_put_unsigned.c ft_putchar.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_nb_len.c ft_unsigned_len.c ft_convert_hex_long.c)

OBJS = $(SRCS:.c=.o)

NAME = libftprintf.a

all: $(NAME)

$(NAME): $(OBJS)
	ar crs $(NAME) $(OBJS)

.c.o:
	gcc -Wall -Wextra -Werror -c $< -o $(<:.c=.o)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
