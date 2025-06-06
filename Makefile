CC = cc

INCLUDE = libft.h

CFLAGS = -Wall -Wextra -Werror

NAME = libft.a

SRCS = ft_bzero.c ft_calloc.c ft_memchr.c ft_memcpy.c \
	ft_putstr_fd.c ft_memmove.c ft_memset.c ft_putchar_fd.c \
	ft_putnbr_fd.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
	ft_atoi.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
	ft_isdigit.c ft_isprint.c ft_memcmp.c ft_strncmp.c \
	ft_tolower.c ft_toupper.c ft_strjoin.c ft_strnstr.c \
	ft_strrchr.c ft_itoa.c ft_strchr.c ft_strtrim.c \
	ft_substr.c ft_strdup.c ft_strmapi.c ft_striteri.c \
	ft_split.c ft_putendl_fd.c

OBJS = $(SRCS:.c=.o)

BONUS = ft_lstsize_bonus.c ft_lstnew_bonus.c ft_lstadd_front_bonus.c \
		ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

BONUS_OBJS = $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(BONUS_OBJS) a.out

fclean: clean
	rm -f $(NAME) a.out

re: fclean all

bonus: $(OBJS) $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)