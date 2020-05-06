NAME= libft.a
CC= gcc
CFLAGS= -Wall -Wextra -Werror
OBJS= $(SRCS:.c=.o)
SRCS			= \
					ft_strcat.c ft_strcmp.c ft_strdup.c ft_striteri.c \
					ft_strlcpy.c ft_strncat.c ft_strnew.c ft_strstr.c \
					ft_strchr.c ft_strcpy.c ft_strequ.c ft_strjoin.c \
					ft_strlen.c ft_strncmp.c  ft_strnstr.c ft_strtrim.c \
					ft_strclr.c  ft_strdel.c  ft_striter.c  ft_strlcat.c \
					ft_strmapi.c  ft_strnequ.c  ft_strrchr.c \
					\
					ft_lstadd_back.c ft_lstclear.c ft_lstiter.c \
					ft_lstmap.c ft_lstsize.c ft_lstadd_front.c \
					ft_lstdelone.c  ft_lstlast.c  ft_lstnew.c \
					\
					ft_memalloc.c ft_memccpy.c ft_memchr.c \
					ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c \
					ft_memset.c \
					\
					ft_putchar.c ft_putchar_fd.c ft_putendl.c \
					ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c \
					ft_putstr.c ft_putstr_fd.c \
					\
					ft_isalnum.c ft_isalpha.c ft_isascii.c \
					ft_isdigit.c ft_isprint.c \
					\
					ft_tolower.c ft_toupper.c \
					\
					ft_atoi.c ft_itoa.c ft_itoa_u.c ft_u_to_x.c \
					ft_ul_to_p.c \
					\
					ft_calloc.c ft_split.c ft_substr.c \
					\
					ft_abs_l.c \

all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $(NAME) $^

%.o: %.c
	@$(CC) -c $< -o $@ $(CFLAGS)

bonus:
	@$(CC) $(CFLAGS) -c ft_lst*.c
	@ar rcs $(NAME) ft_lst*.o

so: fclean
	@$(CC) $(CFLAGS) -fpic -c *.c
	@$(CC) -shared -o libft.so *.o
 
clean: 
	@rm -f *.o
	
fclean: clean
	@rm -f $(NAME)
	@rm -f libft.so

re: fclean all

.PHONY: clean fclean bonus
