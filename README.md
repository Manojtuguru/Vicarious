Vicarious Coding Challenge:
Code Logic

1.	Hosted a simple HTTP Server using python BaseHTTP server module.
2.	Handler class – A simple class to handle the GET & POST requests for the calls made by the server 
3.	Index.html – Loads when the service starts and input to be converted to Pig Latin
4.	A simple logic to check if the starting letter are vowels or constants, add corresponding ‘yay’ or ‘ay’ and returns the elements
5.	CGI(common gateway interface) library is being used here to parse the input from the user
Running the application
1.	Clone the GIT repository to your local through GIT clone or downloading as a Zip file
2.	Change your current working directory to the downloaded file directory 
3.	Since, port 80 is predefined we need to have sudo access to run the code
4.	Run sudo python Vicarious.py 
5.	Open your Browser and type localhost to access the Microservice

Running the Test Suite
1.	The test suite is to check the range of different inputs against the microservice and check for the desired outputs
2.	A shell script is written to test for the different inputs using curl 
3.	Execute ./test.sh  on the command line
4.	There will be a list of tests that passed or failed


