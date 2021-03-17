# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: khermann <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/18 00:26:28 by khermann          #+#    #+#              #
#    Updated: 2021/03/18 00:58:32 by khermann         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minishell

HEADER = minishell.h

SRCS = main.c error.c \
	   parser/parser.c \
	   executor/executor.c \

OBJS		=	$(SRCS:.c=.o)

OBJSBONUS   =   $(SRCSBONUS:.c=.o)

CC      	=   gcc

#CFLAGS  	=   -Wall -Wextra -Werror

LIBFT   	=   libft/libft.a

GNL			=	get_next_line/get_next_line.c		\
				get_next_line/get_next_line_utils.c	\

all:	$(NAME)

$(NAME): $(OBJS) $(HEADER) $(LIBFT)
	$(CC) $(OBJS) $(GNL) $(LIBFT) -o $(NAME)

$(LIBFT): 
			make -C libft

clean:	
		make clean -C libft
		rm -f $(OBJS)

fclean: clean 
		make fclean -C libft
		rm -f $(NAME)

PHONY: all clean fclean
