CC	= gcc

RM	= rm -f

NAME	= my_select

SRCS	= srcs/main.c \
	  srcs/list_handle.c \
	  srcs/funcs.c \
	  srcs/funcs2.c

OBJS	= $(SRCS:.c=.o)

CFLAGS	= -Iincludes/ \
	  -Ilibmy/

all: $(NAME)

$(NAME): $(OBJS)
	 @$(CC) $(OBJS) -o $(NAME) -lmy -Llibmy/ -lcurses
	 @$(RM) $(OBJS)
clean:
	@$(RM) $(OBJS)

fclean: clean
	@$(RM) $(NAME)

re: fclean all
