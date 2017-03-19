#!/bin/sh 
echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=pig" localhost:80/vicarious)
if [ "$result" == "igpay " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=banana" localhost:80/vicarious)
if [ "$result" == "ananabay " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=trash" localhost:80/vicarious)
if [ "$result" == "ashtray " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=duck" localhost:80/vicarious)
if [ "$result" == "uckday " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi


echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=glove" localhost:80/vicarious)
if [ "$result" == "oveglay " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=eat" localhost:80/vicarious)
if [ "$result" == "eatyay " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=omelet" localhost:80/vicarious)
if [ "$result" == "omeletyay " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing the Standard Inputs'
result=$(curl -s -XPOST --data "input=are" localhost:80/vicarious)
if [ "$result" == "areyay " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing the  Inputs in uppercase in the middle of the word'
result=$(curl -s -XPOST --data "input=frUit" localhost:80/vicarious)
if [ "$result" == "Uitfray " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing the input in  uppercase for a consonant'
result=$(curl -s -XPOST --data "input=Fruit" localhost:80/vicarious)
if [ "$result" == "uitFray " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi


echo 'Testing the  input in uppercase for a vowel'
result=$(curl -s -XPOST --data "input=Apple" localhost:80/vicarious)
if [ "$result" == "Appleyay " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing a sentence'
result=$(curl -s -XPOST --data "input=The quick brown fox jump over the lazy dog" localhost:80/vicarious)
if [ "$result" == "eThay uickqay ownbray oxfay umpjay overyay ethay azylay ogday " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing a sentence'
result=$(curl -s -XPOST --data "input=Hen, pig, fox, dOg" localhost:80/vicarious)
if [ "$result" == "en,Hay ig,pay ox,fay Ogday " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

echo 'Testing a sentence'
result=$(curl -s -XPOST --data "input=Hen. pig. fox. dOg" localhost:80/vicarious)
if [ "$result" == "en.Hay ig.pay ox.fay Ogday " ]; then
	echo "The expected result matched the actual result test passed"
else
	echo "The expected result did not match the actual result test failed"
fi

# echo 'Testing a sentence with Periods'
# curl -XPOST --data "input=Hen.pig.fox.dOg" localhost:80/vicarious
