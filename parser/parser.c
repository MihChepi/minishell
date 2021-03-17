#include "../minishell.h"

void 	create_tokens(char *line, t_sh *sh)
{
	
}

void 	parser(t_sh *sh)
{
	char *line;

	if (get_next_line(0, &line) == -1)
		error("GNL_fail", 1);
	create_tokens(line, sh);
}
