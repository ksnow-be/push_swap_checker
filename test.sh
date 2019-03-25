from=$1
to=$2
count=$3
sred=0
let "dif = $to - $from + 1"

for ((i = 0; i < $count; i++))
do
ARG=`ruby -e "puts ($from..$to).to_a.shuffle.join(' ')"` ; res=$(./push_swap $ARG | wc -l)
if [ $dif -eq 100 ]
then
if [ $res -gt 1500 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   0️⃣  ❕  5️⃣  ❗️"
let "sred += $res"
elif [ $res -gt 1300 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   1️⃣  ❕  5️⃣     ✅"
let "sred += $res"
elif [ $res -gt 1100 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   2️⃣  ❕  5️⃣     ✅  ✅"
let "sred += $res"
elif [ $res -gt 900 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   3️⃣  ❕  5️⃣     ✅  ✅  ✅"
let "sred += $res"
elif [ $res -gt 700 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   4️⃣  ❕  5️⃣     ✅  ✅  ✅  ✅"
let "sred += $res"
elif [ $res -gt 0 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   5️⃣  ❕  5️⃣     ✅  ✅  ✅  ✅  ✅"
let "sred += $res"
fi
elif [ $dif -eq 500 ]
then
if [ $res -gt 11500 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   0️⃣  ❕  5️⃣  ❗️"
let "sred += $res"
elif [ $res -gt 10000 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   1️⃣  ❕  5️⃣     ✅"
let "sred += $res"
elif [ $res -gt 8500 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   2️⃣  ❕  5️⃣     ✅  ✅"
let "sred += $res"
elif [ $res -gt 7000 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   3️⃣  ❕  5️⃣     ✅  ✅  ✅"
let "sred += $res"
elif [ $res -gt 5500 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   4️⃣  ❕  5️⃣     ✅  ✅  ✅  ✅"
let "sred += $res"
elif [ $res -gt 0 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m   5️⃣  ❕  5️⃣     ✅  ✅  ✅  ✅  ✅"
let "sred += $res"
fi
elif [ $dif -eq 5 ]
then
if [ $res -gt 12 ]
then
echo "Test result on $from..$to randoms: \033[36m$res\033[m    ❌"
else
echo "Test result on $from..$to randoms: \033[36m$res\033[m    ✅"
fi
else
echo "Test result on $from..$to randoms: \033[36m$res\033[m"
fi
done

let "koef = $sred / $count"
echo "\n💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠\n"
if [ $dif -eq 100 ]
    then
    if [ $koef -gt 1300 ]
    then
    echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  0️⃣     ❗️"
    elif [ $koef -gt 1300 ]
    then
    echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  1️⃣     ✅"
    elif [ $koef -gt 1100 ]
    then
    echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  2️⃣     ✅  ✅"
    elif [ $koef -gt 900 ]
    then
    echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  3️⃣     ✅  ✅  ✅"
    elif [ $koef -gt 700 ]
    then
    echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  4️⃣      ✅  ✅  ✅  ✅"
    elif [ $koef -gt 0 ]
    then
    echo "Middle value: \033[33m$koef\033[m   Grade is :  5️⃣      ✅  ✅  ✅  ✅  ✅"
    fi
elif [ $dif -eq 500 ]
    then
        if [ $koef -gt 11500 ]
        then
        echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  0️⃣     ❗️"
        elif [ $koef -gt 10000 ]
        then
        echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  1️⃣     ✅"
        elif [ $koef -gt 8500 ]
        then
        echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  2️⃣     ✅  ✅"
        elif [ $koef -gt 7000 ]
        then
        echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  3️⃣     ✅  ✅  ✅"
        elif [ $koef -gt 5500 ]
        then
        echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  4️⃣      ✅  ✅  ✅  ✅"
        elif [ $koef -gt 0 ]
        then
        echo "\nMiddle value: \033[33m$koef\033[m   Grade is :  5️⃣      ✅  ✅  ✅  ✅  ✅"
        fi
fi

leak=$(valgrind ./push_swap $ARG 2>&1 | grep "definitely lost" | cut -d ':' -f2 | cut -d ' ' -f2)
heap=$(valgrind ./push_swap $ARG 2>&1 | grep "heap usage" | cut -d ':' -f2 | cut -d ' ' -f2 | cut -d "," -f1)

if [ $heap -gt 0 ]
then
    if [ $leak -gt 0 ]
    then
    echo "Leaks: \033[31m$leak\033[m byte(s)"
    else
    echo "Leaks: \033[32m0\033[m bytes"
    fi
else
echo "Leaks: \033[31mvalgrind is unable, check your Makefile or SDL/MLX compilers\033[m"
fi
echo "\n💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠 💠"



