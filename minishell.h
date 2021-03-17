#ifndef MINISHELL_H
# define MINISHELL_H

# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include "libft/libft.h"
# include "get_next_line/get_next_line.h"


typedef struct 		s_token
{
	char			type[5];
	char			*str;
}					t_token;

typedef struct		s_sh
{
	char 			(*hist)[10];
	t_list			*t;
}					t_sh;

void 	parser(t_sh *sh);
void 	executor(t_sh *sh);

#endif