#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/sysinfo.h>

void information()
{
	char current_dir[100] = {0};
	char logo[6] = {
    "                  -`                    ",
    "                 .o+`                   ",
    "                `ooo/                   ",
    "               `+oooo:                  ",
    "              `+oooooo:                 ",
    "              -+oooooo+:                ",
    "            `/:-:++oooo+:               ",
    "           `/++++/+++++++:              ",
    "          `/++++++++++++++:             ",
    "         `/+++ooooooooooooo/`           ",
    "        ./ooosssso++osssssso+`          ",
    "       .oossssso-````/ossssss+`         ",
    "      -osssssso.      :ssssssso.        ",
    "     :osssssss/        osssso+++.       ",
    "    /ossssssss/        +ssssooo/-       ",
    "  `/ossssso+/:-        -:/+osssso+-     ",
    " `+sso+:-`                 `.-/+oso:    ",
    "`++:.                           `-/+/   ",
    ".`                                 `/   "
};
	struct sysinfo sys_info;
	getcwd(current_dir, 100);
	sysinfo(&sys_info);
	printf("Your in: %s\n",current_dir);
	printf("You have %ld MiB of RAM\n",sys_info.totalram / 1024 /1024);
	printf("%ld MiB of it is free\n",sys_info.freeram /1024 /1024);
	printf("Processes running:%d \n", sys_info.procs);
}

int main()
{
		information();
 	    printf("Greeting message: %s\n", logo );
		return 0;
}
