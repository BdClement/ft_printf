NAME = libftprintf.a

CC = cc
FLAGS = -Wall -Werror -Wextra -I.
AR = ar rc
RM = rm -f

SRCS = ft_printf_utils.c ft_printf.c ft_stock_arg.c ft_format_c.c ft_format_di.c ft_format_p.c ft_format_s.c ft_format_u.c ft_format_x.c

OBJS = $(SRCS:.c=.o)


all : $(NAME)

$(NAME) : $(OBJS)
	$(AR) $(NAME) $(OBJS)
	ranlib $(NAME)

cc :
	$(CC) $(FLAGS) main.c -L. -lftprintf

%.o : %.c
	$(CC) $(FLAGS) -c $<

bonus : $(NAME)

clean:
	$(RM) $(OBJS) $(B_OBJS)

fclean: clean
	 $(RM) $(NAME)

re: fclean all

.PHONY : re all fclean bonus clean
