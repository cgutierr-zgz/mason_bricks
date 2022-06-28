#ifndef {{project_name.upperCase()}}_H
#define {{project_name.upperCase()}}_H

#include <stdio.h>

# define RESET			"\x1b[0m"
# define GREEN			"\x1b[32m"
# define RED			"\x1b[31m"

typedef struct s_example
{
	int	x;
	int	y;
}	t_example;

void my_example_function(int i);

#endif