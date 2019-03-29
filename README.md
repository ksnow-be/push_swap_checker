# PUSH_SWAP_CHECKER

1) Do MAKE.

2) Move "test.sh" script into the same folder.

3) The usage is:

![alt text](https://raw.github.com/ksnow-be/push_swap_checker/master/PNGS/USAGE.png)

4) If you want FULL check of your project, you should include "-full" flag.

# EXAMPLE OF AN OKAY PROJECT (-full)

![alt text](https://raw.github.com/ksnow-be/push_swap_checker/master/PNGS/OKAY_PS.png)

# EXAMPLE OF A BAD PROJECT (-full)

![alt text](https://raw.github.com/ksnow-be/push_swap_checker/master/PNGS/BAD_PS.png)

5) In other case, just run it without any flag.

# EXAMPLE WITHOUT FLAG

![alt text](https://raw.github.com/ksnow-be/push_swap_checker/master/PNGS/JUST1-100.png)

6) There is a special trigger to check your (1 .. 5) randoms to check your programm does more than 12 operations.

# EXAMPLE ON 5 RANDOMS

![alt text](https://raw.github.com/ksnow-be/push_swap_checker/master/PNGS/JUST5.png)

7) If you are using SDL or MLX vizualizers, your valgrind test probably will show 0 heap usage.
    In that case, create an infinite loop in your programm main, than run it as a Daemon, than use "LEAKS PID".
  
# EXAMPLE ON SDL/MLX VIZUALIZERS (LEAK PROBLEM)

![alt text](https://raw.github.com/ksnow-be/push_swap_checker/master/PNGS/SDL_PS.png)
