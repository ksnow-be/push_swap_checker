[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

```
Родные мои, чекер писался на коленке в 2019 году.
Если он потерял актуальность или у вас есть желание влить пару изменений - слак ksnow-be
```

# PUSH_SWAP_CHECKER

## Made by 

| Person | Сircumstances | Intra/Slack |
| ------:| -----------:| ------:|
| [Alex](https://github.com/ksnow-be) | Bored student of 21 | [ksnow-be](https://profile.intra.42.fr/users/ksnow-be)|
| [Levon](https://github.com/levonka)   | His lovely friend who found this idea non-stupid | [agottlie](https://profile.intra.42.fr/users/agottlie)|


## Step by step

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
