#!/bin/bash
UNAME=$(uname -s)

ERRORS=0

TEST1='TEST1'
cat ./cat/test1.txt > ./cat/original_result.txt
valgrind --log-file="log1" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat ./cat/test1.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST1 without flags"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -e ./cat/test1.txt > ./cat/original_result.txt
valgrind --log-file="log2" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -e ./cat/test1.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST1 with -e"
rm ./cat/original_result.txt ./cat/s21_result.txt

if [ "$UNAME" == "Linux" ]; then
cat -E ./cat/test1.txt > ./cat/original_result.txt
valgrind --log-file="log3" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -E ./cat/test1.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST1 with -E"
rm ./cat/original_result.txt ./cat/s21_result.txt
fi

cat -t ./cat/test1.txt > ./cat/original_result.txt
valgrind --log-file="log4" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -t ./cat/test1.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST1 with -t"
rm ./cat/original_result.txt ./cat/s21_result.txt

if [ "$UNAME" == "Linux" ]; then
cat -T ./cat/test1.txt > ./cat/original_result.txt
valgrind --log-file="log5" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -T ./cat/test1.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST1 with -T"
rm ./cat/original_result.txt ./cat/s21_result.txt
fi

cat -n ./cat/test1.txt > ./cat/original_result.txt
valgrind --log-file="log6" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -n ./cat/test1.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST1 with -n"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -b ./cat/test1.txt > ./cat/original_result.txt
valgrind --log-file="log7" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -b ./cat/test1.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST1 with -b"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -s ./cat/test1.txt > ./cat/original_result.txt
valgrind --log-file="log8" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -s ./cat/test1.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST1 with -s"
rm ./cat/original_result.txt ./cat/s21_result.txt

TEST3='TEST3'
cat ./cat/test3.txt > ./cat/original_result.txt
valgrind --log-file="log9" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat ./cat/test3.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST3 without flags"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -e ./cat/test3.txt > ./cat/original_result.txt
valgrind --log-file="log10" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -e ./cat/test3.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST3 with -e"
rm ./cat/original_result.txt ./cat/s21_result.txt

if [ "$UNAME" == "Linux" ]; then
cat -E ./cat/test3.txt > ./cat/original_result.txt
valgrind --log-file="log11" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -E ./cat/test3.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST3 with -E"
rm ./cat/original_result.txt ./cat/s21_result.txt
fi

cat -t ./cat/test3.txt > ./cat/original_result.txt
valgrind --log-file="log12" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -t ./cat/test3.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST3 with -t"
rm ./cat/original_result.txt ./cat/s21_result.txt

if [ "$UNAME" == "Linux" ]; then
cat -T ./cat/test3.txt > ./cat/original_result.txt
valgrind --log-file="log13" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -T ./cat/test3.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST3 with -T"
rm ./cat/original_result.txt ./cat/s21_result.txt
fi

cat -n ./cat/test3.txt > ./cat/original_result.txt
valgrind --log-file="log14" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -n ./cat/test3.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST3 with -n"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -b ./cat/test3.txt > ./cat/original_result.txt
valgrind --log-file="log15" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -b ./cat/test3.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST3 with -b"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -s ./cat/test3.txt > ./cat/original_result.txt
valgrind --log-file="log16" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -s ./cat/test3.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST3 with -s"
rm ./cat/original_result.txt ./cat/s21_result.txt

TEST5='TEST5'
cat ./cat/test5.txt > ./cat/original_result.txt
valgrind --log-file="log17" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat ./cat/test5.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST5 without flags"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -e ./cat/test5.txt > ./cat/original_result.txt
valgrind --log-file="log18" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -e ./cat/test5.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST5 with -e"
rm ./cat/original_result.txt ./cat/s21_result.txt

if [ "$UNAME" == "Linux" ]; then
cat -E ./cat/test5.txt > ./cat/original_result.txt
valgrind --log-file="log19" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -E ./cat/test5.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST5 with -E"
rm ./cat/original_result.txt ./cat/s21_result.txt
fi

cat -t ./cat/test5.txt > ./cat/original_result.txt
valgrind --log-file="log20" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -t ./cat/test5.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST5 with -t"
rm ./cat/original_result.txt ./cat/s21_result.txt

if [ "$UNAME" == "Linux" ]; then
cat -T ./cat/test5.txt > ./cat/original_result.txt
valgrind --log-file="log21" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -T ./cat/test5.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST5 with -T"
rm ./cat/original_result.txt ./cat/s21_result.txt
fi

cat -n ./cat/test5.txt > ./cat/original_result.txt
valgrind --log-file="log22" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -n ./cat/test5.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST5 with -n"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -b ./cat/test5.txt > ./cat/original_result.txt
valgrind --log-file="log23" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -b ./cat/test5.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST5 with -b"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -s ./cat/test5.txt > ./cat/original_result.txt
valgrind --log-file="log24" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -s ./cat/test5.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST5 with -s"
rm ./cat/original_result.txt ./cat/s21_result.txt

TEST6='TEST6'
cat ./cat/test6.txt > ./cat/original_result.txt
valgrind --log-file="log25" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat ./cat/test6.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST6 without flags"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -e ./cat/test6.txt > ./cat/original_result.txt
valgrind --log-file="log26" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -e ./cat/test6.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST6 with -e"
rm ./cat/original_result.txt ./cat/s21_result.txt

if [ "$UNAME" == "Linux" ]; then
cat -E ./cat/test6.txt > ./cat/original_result.txt
valgrind --log-file="log27" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -E ./cat/test6.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST6 with -E"
rm ./cat/original_result.txt ./cat/s21_result.txt
fi

cat -t ./cat/test6.txt > ./cat/original_result.txt
valgrind --log-file="log28" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -t ./cat/test6.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST6 with -t"
rm ./cat/original_result.txt ./cat/s21_result.txt

if [ "$UNAME" == "Linux" ]; then
cat -T ./cat/test6.txt > ./cat/original_result.txt
valgrind --log-file="log28" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -T ./cat/test6.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST6 with -T"
rm ./cat/original_result.txt ./cat/s21_result.txt
fi

cat -n ./cat/test6.txt > ./cat/original_result.txt
valgrind --log-file="log29" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -n ./cat/test6.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST6 with -n"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -b ./cat/test6.txt > ./cat/original_result.txt
valgrind --log-file="log30" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -b ./cat/test6.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST6 with -b"
rm ./cat/original_result.txt ./cat/s21_result.txt

cat -s ./cat/test6.txt > ./cat/original_result.txt
valgrind --log-file="log31" --leak-check=full --show-leak-kinds=all --track-origins=yes ./cat/s21_cat -s ./cat/test6.txt > ./cat/s21_result.txt
cmp ./cat/original_result.txt ./cat/s21_result.txt || let ERRORS+=1 && echo "IN $TEST6 with -s"
rm ./cat/original_result.txt ./cat/s21_result.txt


echo "Total number of errors is $ERRORS."
