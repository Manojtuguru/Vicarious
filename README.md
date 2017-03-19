                                                                       Vicarious Coding Challenge

Running the application
1.	Clone the GIT repository to your local through GIT clone or downloading as a Zip file
2.	Change your current working directory to the downloaded file directory 
3.	Port 80 is predefined we need to have sudo access to run the Service
4.	Run sudo python VicariousServer.py 
5.	Open your Browser and type localhost to access the Microservice

Running the Test Suite
1.	The test suite is to check the range of different inputs against the microservice and check for the desired outputs
2.	A shell script is written to test for the different inputs using curl 
3.	Execute ./test.sh  on the command line
4.	There will be a list of tests that passed or failed with the corresponding input asserted towards the outputs

Code Logic
1.      Hosted a simple HTTP Server using python BaseHTTP server module.
2.      Handler class – A class to handle the GET & POST requests for the calls made to the server
3.      A simple POST call in the terminal when the service is running will convert the Input string to PigLatin
4.      Index.html – To access on the browser, Point the browser to localhost:80 and input the word/paragraph to be converted into Pig Latin
5.      The input is parsed to check if the starting letter are vowels or constants, append corresponding ‘yay’ or ‘ay’ with change in pattern and returns the PigLatin
6.      CGI(common gateway interface) is the external library used to parse the input from the html 
