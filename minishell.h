#ifndef MINISHELL_H
# define MINISHELL_H

# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include "libft/libft.h"

typedef struct 		s_token
{

}					t_token;

typedef struct		s_sh
{

}					t_sh;

void 	parser(t_sh *sh);
void 	executor(t_sh *sh);

#endif