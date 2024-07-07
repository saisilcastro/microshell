#include <string.h>
#include <unistd.h>
#include <stdio.h>

int main(int argc, char **argv) {
	int    i = 0;
    int    status = 0;

    if (argc > 1)
    {
        while (argv[i] && argv[++i])
        {
            argv += i;
			printf("%s\n", *argv);
            i = 0;
            while (argv[i] && strcmp(argv[i], "|") && strcmp(argv[i], ";"))
                i++;
            if (i)
                exec(argv, )
        }
    }
    return status;
}
