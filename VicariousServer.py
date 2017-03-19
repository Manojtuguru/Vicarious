#!/usr/bin/python
import cgi
from BaseHTTPServer import BaseHTTPRequestHandler,HTTPServer
# Intitalize Server to Port 80
PORT_NUMBER = 80 

# Class to Handle GET & POST Methods   
class myHandler(BaseHTTPRequestHandler):
	#GET Method for Index.html
	def do_GET(self):
		self.send_response(200)
		self.send_header('Content-type','text/html')
		self.end_headers()
		f = open("index.html")
		self.wfile.write(f.read())                                    # Send the html message
		f.close()
		return
	#POST Method to post the words to be Pig Latined
	def do_POST(self):
		if '/vicarious' in self.path:
			form=cgi.FieldStorage(fp=self.rfile,headers=self.headers,environ={'REQUEST_METHOD':'POST',
				'CONTENT_TYPE':self.headers['Content-Type']})         # To read the input 
			words = str(form['input'])                                # String Manipulation to get the string to work on
			words= words[27:]
			words=words[:-2]
			LatinWords = []
			PigLatin = ''
			wordlist = words.split()
			for i in wordlist:                                        # Check if the Word starts with Vowel
				if i[0] in 'aeiou' or i[0] in 'AEIOU':
					temp = ''.join([i,'yay'])
					LatinWords.append(temp)
				else:                                                # If the Word is a Consonant
					vowel=0
					for j in range(len(i)):
						if i[j] in'aeiou' or i[j] in "AEIOU":
							vowel=1
							temp = ''.join([i[j:],i[:j],'ay'])
							LatinWords.append(temp)
							break  
					if vowel == 0:                                  # When the input word/paragraph doesn't have any vowels in them
						temp = ''.join([i,'ay'])
						LatinWords.append(temp)
			for words in LatinWords:                                # Appending to the Final String 
				PigLatin=PigLatin+words+" "
		self.send_response(200)
		self.send_header('Content-type','text/html')
		self.end_headers()
		self.wfile.write(str(PigLatin))                             # Writing to the Message Body
		return
try:
	#Create a web server and define the handler to manage the
	#incoming request
	server = HTTPServer(('', PORT_NUMBER), myHandler)
	print 'Started httpserver on port ' , PORT_NUMBER              # Starting the Server 
	
	#Wait forever for incoming htto requests
	server.serve_forever()
except KeyboardInterrupt:
	print '^C received, shutting down the web server'             # Bringing Down the Server 
	server.socket.close()
print "Serving at port", PORT
httpd.serve_forever(),i[:j]
