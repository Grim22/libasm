#include <stdio.h>

int ft_strlen(char *str);
int ft_strcmp(char *a, char *b);
char *ft_strdup(char const *s1);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);

int main()
{
	char *s;
	s = strdup("bas");
	ft_write(1, s, 3);
}
