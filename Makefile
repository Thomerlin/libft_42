NAME	= libft.a

CC		= gcc

RM		= rm -f

CFLAGS	= -Wall -Wextra -Werror

AR		= ar rc

RANLIB	= ranlib

HEADERS = libft.h

SRC		= 	ft_atoi.c ft_bzero.c ft_calloc.c \
			ft_memcmp.c ft_memset.c ft_memcpy.c ft_memccpy.c ft_memchr.c ft_memmove.c \
			ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
			ft_tolower.c ft_toupper.c \
			ft_strlen.c ft_strlcat.c ft_strlcpy.c ft_strncmp.c ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strdup.c \
			ft_substr.c  ft_strmapi.c ft_strjoin.c ft_itoa.c ft_strtrim.c ft_split.c \
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \

SRCBON = 	ft_lstsize.c ft_lstadd_back.c ft_lstadd_front.c \
			ft_lstclear.c ft_lstiter.c  ft_lstdelone.c \
			ft_lstlast.c ft_lstmap.c ft_lstnew.c \

.c.o:	$(CC) $(CFLAGS) $(HEADERS) -c $< -o $(<:.c=.o)

OBJ		= $(SRC:.c=.o)

OBJ_B	= $(SRCBON:.c=.o)

$(NAME):		
				@$(CC) $(CFLAGS) -c $(SRC)
				@$(AR) $(NAME) $(OBJ)
				@$(RANLIB) $(NAME)
				@echo "[INFO] Libray [$(NAME)] created!"

all:		$(NAME)

bonus:
				@$(CC) $(CFLAGS) -c $(SRCBON)
				@$(AR) $(NAME) $(OBJ_B)
				@$(RANLIB) $(NAME)
				@echo "[INFO] bonus created!"

clean:
			@$(RM) $(OBJ) $(OBJ_B)
			@echo "[INFO] Objects removed!"$(RM) 

fclean:		clean
			@$(RM) $(NAME)
			@echo "[INFO] Library [$(NAME)] removed!"

re:			fclean all

.PHONY: all bonus clean fclean re