#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>

#define BUF_SIZE 30

int ft_strlen(char *str);
int ft_strcmp(char *a, char *b);
char *ft_strdup(char const *s1);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t ft_read(int fd, void *buf, size_t count);
char *ft_strcpy(char *dest, const char *src);

#define PRINT_FT_STRLEN(x) printf("str: [%s] len: [%ld] --> ft_strlen = [%d]\n", x, strlen(x), ft_strlen(x))
#define PRINT_FT_STRCMP(x, y) printf("s1: [%s] s2: [%s] strcmp: [%d]--> ft_strcmp = [%d]\n", x, y, strcmp(x, y), ft_strcmp(x,y))
#define PRINT_FT_STRDUP(x) printf("str: [%s] ft_strdup = [%s]\n", x, ft_strdup(x))
#define PRINT_FT_STRCPY(x, y) printf("dest: [%s] src: [%s] --> ft_strcpy =  [%s]\n", x, y, ft_strcpy(strdup(x), y))


int main()
{
	printf("Test ft_strlen _____________________\n"); 
	PRINT_FT_STRLEN("Basile");
	PRINT_FT_STRLEN("");
	PRINT_FT_STRLEN("Ecole 42 Paris");
	printf("\nTest ft_strcmp _____________________\n");
	PRINT_FT_STRCMP("Basile", "Hey");
	PRINT_FT_STRCMP("Hey", "Basile");
	PRINT_FT_STRCMP("Basile", "Basile");
	PRINT_FT_STRCMP("Basile", "");
	printf("\nTest ft_strdup _____________________\n");
	PRINT_FT_STRDUP("Basile");
	PRINT_FT_STRDUP("");
	printf("\nTest ft_strcpy _____________________\n");
	PRINT_FT_STRCPY("Basile", "Hey");
	PRINT_FT_STRCPY("Basile", "Basile");
	PRINT_FT_STRCPY("Basile", "");
	printf("\nTest ft_write _____________________\n");
	ft_write(1, "Hello 42\n", strlen("Hello 42\n"));
	printf("\nTest ft_read _____________________\n");
	printf("Output with READ\n");	
	int i = 0;
	int fd = open("test", O_RDONLY);
	char *buf = malloc(BUF_SIZE + 1);
	int ret = read(fd, buf, BUF_SIZE);
	buf[ret] = 0;
	while(ret)
	{
		printf("read #%d: ", i);
		printf("ret: %d ", ret);
		printf("buf: %s\n", buf);
		ret = read(fd, buf, BUF_SIZE);
		buf[ret] = 0;
		i++;
	}
	close(fd);
	i = 0;
	printf("Output with FT_READ\n");	
	fd = open("test", O_RDONLY);
	ret = ft_read(fd, buf, BUF_SIZE);
	buf[ret] = 0;
	while(ret)
	{
		printf("read #%d: ", i);
		printf("ret: %d ", ret);
		printf("buf: %s\n", buf);
		ret = ft_read(fd, buf, BUF_SIZE);
		buf[ret] = 0;
		i++;
	}
}
