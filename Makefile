# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jschotte <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/24 10:08:32 by jschotte          #+#    #+#              #
#    Updated: 2017/04/25 12:51:05 by jschotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC = src/ft_isdigit.s \
	  src/ft_isalpha.s \
	  src/ft_isalnum.s \
	  src/ft_isascii.s \
	  src/ft_isprint.s \
	  src/ft_toupper.s \
	  src/ft_tolower.s \
	  src/ft_strlen.s  \
	  src/ft_bzero.s   \
	  src/ft_strcat.s  \
	  src/ft_puts.s	   \
	  src/ft_memset.s  \
	  src/ft_memcpy.s  \
	  src/ft_strdup.s  \
	  src/ft_cat.s	   \
	  src/ft_abs.s	   \
	  src/ft_swap.s    \
	  src/ft_strcmp.s  \
	  src/ft_isxdigit.s

all: $(NAME)

OBJ = $(SRC:.s=.o)

$(NAME): $(OBJ)

%.o: %.s
	@~/.brew/bin/nasm -f macho64 $< -o $@ -I.
	@ar -rc $(NAME) $@
	@gcc main.c -L . -lfts

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -rf $(NAME)
	@rm -rf ./a.out

re: fclean all

.PHONY: all clean fclean re
