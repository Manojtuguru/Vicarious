#!/bin/sh 
echo 'Vicarious'
result=$(curl -s -XPOST --data "input=vicarious is really cOOl compAny and I Would Love To work With Them" localhost:80/vicarious)
if [ "$result" == "icariousvay isyay eallyray OOlcay ompAnycay andyay Iyay ouldWay oveLay oTay orkway ithWay emThay " ]; then
	echo "The expected result \"$result\" matched the actual result \"icariousvay isyay eallyray OOlcay ompAnycay andyay Iyay ouldWay oveLay oTay orkway ithWay emThay\" for the test case \"vicarious is really cOOl compAny and I Would Love To Work With Them\" passed"
else
	echo "The expected result \"$result\" did not match the actual result \"icariousvay isyay eallyray OOlcay ompAnycay andyay Iyay ouldWay oveLay oTay orkway ithWay emThay\" for the test case  \"vicarious is really cOOl compAny and I Would Love To Work With Them\" failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=pig" localhost:80/vicarious)
if [ "$result" == "igpay " ]; then
	echo "The expected result \"$result\" matched the actualy result \"igpay\" for the test case \"pig\" passed"
else
	echo "The expected result \"$result\" did not match the actual result \"igpay\" for test case \"pig\" failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=banana" localhost:80/vicarious)
if [ "$result" == "ananabay " ]; then
	echo "The expected result \"$result\" matched the actual result \"ananabay\" for the test case \"banana\" passed"
else
	echo "The expected result \"$result\" did not match the actual result \"ananabay\" for  test case \"banana\" failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=trash" localhost:80/vicarious)
if [ "$result" == "ashtray " ]; then
	echo "The expected result \"$result\" matched the actual result  \"ashtray\" for the test case \"trash\"  passed"
else
	echo "The expected result  \"$result\" did not match the actual result \"ashtray\" for test case \"trash\"  failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=duck" localhost:80/vicarious)
if [ "$result" == "uckday " ]; then
	echo "The expected result \"$result\" matched the actual result  \"uckday\" for the test case \"duck\"  passed"
else
	echo "The expected result \"$result\" did not match the actual result  \"uckday\" for the test case  \"duck\" failed"
fi


echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=glove" localhost:80/vicarious)
if [ "$result" == "oveglay " ]; then
	echo "The expected result \"$result\" matched the actual result  \"oveglay\" for the test case \"glove\" passed"
else
	echo "The expected result  \"$result\" did not match the actual result \"oveglay\" for the test case  \"glove\" failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=eat" localhost:80/vicarious)
if [ "$result" == "eatyay " ]; then
	echo "The expected result  \"$result\" matched the actual result \"eatyay\" for the test case \"eat\" passed"
else
	echo "The expected result  \"$result\" did not match the actual result  \"eatyay\"  for the test case  \"eat\" failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=omelet" localhost:80/vicarious)
if [ "$result" == "omeletyay " ]; then
	echo "The expected result \"$result\" matched the actual result \"omeletyay\" for the test case \"omelet\" passed"
else
	echo "The expected result \"$result\" did not match the actual result \"omeletyay\"  for the test case  \"omelet\" failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=are" localhost:80/vicarious)
if [ "$result" == "areyay " ]; then
	echo "The expected result \"$result\" matched the actual result \"areyay\" for the test case \"are\" passed"
else
	echo "The expected result  \"$result\" did not match the actual result \"areyay\" for the test case  \"are\" failed"
fi

echo 'Testing the  Inputs in uppercase in the middle of the word'
result=$(curl -s -XPOST --data "input=frUit" localhost:80/vicarious)
if [ "$result" == "Uitfray " ]; then
	echo "The expected result \"$result\" matched the actual result \"Uitfray\" for the test case \"frUit\" passed"
else
	echo "The expected result \"$result\" did not match the actual  result \"Uitfray\" for the test case  \"frUit\" failed"
fi

echo 'Testing the input in  uppercase for a consonant'
result=$(curl -s -XPOST --data "input=Fruit" localhost:80/vicarious)
if [ "$result" == "uitFray " ]; then
	echo "The expected result \"$result\" matched the actual result \"uitFray\" for the test case \"Fruit\" passed"
else
	echo "The expected result \"$result\" did not match the actual result \"uitFray\" for the test case  \"Fruit\" failed"
fi


echo 'Testing the  input in uppercase for a vowel'
result=$(curl -s -XPOST --data "input=Apple" localhost:80/vicarious)
if [ "$result" == "Appleyay " ]; then
	echo "The expected result \"$result\" matched the actual result \"Appleyay\" for the test case \"Apple\" passed"
else
	echo "The expected result \"$result\" did not match the actual result \"Appleyay\" for the test case  \"Apple\" failed"
fi

echo 'Testing a sentence'
result=$(curl -s -XPOST --data "input=The quick brown fox jump over the lazy dog" localhost:80/vicarious)
if [ "$result" == "eThay uickqay ownbray oxfay umpjay overyay ethay azylay ogday " ]; then
	echo "The expected result \"$result\" matched the actual result \"eThay uickqay ownbray oxfay umpjay overyay ethay azylay ogday \" for the test case \"The quick brown fox jump over the lazy dog\" passed"
else
	echo "The expected result \"$result\" did not match the actual result \"ueThay uickqay ownbray oxfay umpjay overyay ethay azylay ogday \" for the test case  \"The quick brown fox jump over the lazy dog\" failed"
fi

echo 'Testing a sentence'
result=$(curl -s -XPOST --data "input=Hen, pig, fox, dOg" localhost:80/vicarious)
if [ "$result" == "en,Hay ig,pay ox,fay Ogday " ]; then
	echo "The expected result \"$result\" matched the actual result \"en,Hay ig,pay ox,fay Ogday \" for the test case \"Hen, pig, fox, dOg\" passed"
else
	echo "The expected result \"$result\" did not match the actual result \"en,Hay ig,pay ox,fay Ogday \" for the test case  \"Hen, pig, fox, dOg\" failed"
fi





