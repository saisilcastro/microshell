NAME = microshell
SRC = pasqualil.c
OBJ = obj
SRCOBJ = $(SRC:%.c=${OBJ}/%.o)
CREATE = mkdir -p $(1)
REMOVE = rm -rf $(1)

all: $(NAME)
$(NAME): $(SRCOBJ)
	@echo $^
	$(CC) $^ -o $(NAME)
${OBJ}/%.o : %.c
	$(call CREATE,${OBJ})
	$(CC) -c $< -o $@
clean:
	$(call REMOVE,${OBJ});
fclean: clean
	$(call REMOVE,${NAME})
re: fclean all
