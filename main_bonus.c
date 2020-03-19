#include "stdio.h"
#include "string.h"
#include "stdlib.h"

#define print_atoi(x, y) printf("[string: %s base: %s --> %d]\n", x, y, ft_atoi_base(x, y))

typedef struct	s_list
{
	void			*data;
	struct s_list	*next;
}				t_list;


void print_str_list(t_list *lst)
{
				char *str;
				int i;

				i = 0;
				while(lst)
				{
								str = lst->data;
								printf("elem #%d: [%s]\n", i, str);
								lst = lst->next;
								i++;
				}
}

void	ft_list_push_front(t_list **begin_list, void *data);
int ft_atoi_base(char *str, char *base);
int		ft_list_size(t_list *begin_list);

int main()
{
/*
printf("test ft_atoi ------------------------------------------\n");
print_atoi("101", "01");
print_atoi("101", "0123456789");
print_atoi("101", "0123456789abcdef");
print_atoi("     \t\n12", "0123456789");
print_atoi("+++-+12", "0123456789");
print_atoi("   +-+-+12", "0123456789");
print_atoi("2147483647", "0123456789");
print_atoi("-2147483648", "0123456789");
print_atoi("-101et_des_poussieres", "0123456789");
print_atoi("101", "xyz");
print_atoi("101", "xyzx");
print_atoi("101", "xyz+");
print_atoi("101", "-xyz");
print_atoi("101", "x yz");
print_atoi("101", "x");
print_atoi("101", "");*/
printf("test ft_list_push_front ------------------------------------------\n");

t_list *lst;
lst = malloc(sizeof(*lst));
lst->data = strdup("Hello");
lst->next = NULL;
//ft_list_push_front(&lst, strdup("basile"));
//ft_list_push_front(&lst, strdup("42"));
//ft_list_push_front(&lst, strdup("confinement"));
print_str_list(lst);
printf("test ft_list_size ------------------------------------------\n");
int size;
size = ft_list_size(lst);
printf("size is [%d]\n", size);
}
