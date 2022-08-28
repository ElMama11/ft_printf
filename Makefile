# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                          sh test m                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mverger <mverger@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/09 14:44:01 by mverger           #+#    #+#              #
#    Updated: 2021/11/25 14:43:28 by mverger          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CMD=gcc
FLAGS=-Werror -Wextra -Wall

NAME=libftprintf.a

HEADER=ft_printf.h

SRC=ft_printf.c ft_printf_utils.c

OBJ= $(SRC:.c=.o)

%.o: %.c $(HEADER)
	$(CMD) $(FLAGS) -c $< -o $@

$(NAME) :	$(SRC) $(OBJ) $(HEADER)
			ar rcs $(NAME) $(OBJ)

all: $(NAME)

clean:
	rm -rf $(OBJ)

fclean:	clean
	rm -rf $(NAME)
	
re: fclean all

.PHONY: all clean fclean re