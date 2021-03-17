#include "minishell.h"

void	error(char *str, int i)
{
	write(2, str, ft_strlen(str));
}
