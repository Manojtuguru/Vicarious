#!/usr/bin/python
import cgi
from BaseHTTPServer import BaseHTTPRequestHandler,HTTPServer
PORT_NUMBER = 80 
class myHandler(BaseHTTPRequestHandler):
	def do_GET(self):
		self.send_response(200)
		self.send_header('Content-type','text/html')
		self.end_headers()
		# Send the html message
		f = open("index.html")
		self.wfile.write(f.read())
		f.close()
		return
	def do_POST(self):
		if '/vicarious' in self.path:
			form=cgi.FieldStorage(fp=self.rfile,headers=self.headers,environ={'REQUEST_METHOD':'POST',
				'CONTENT_TYPE':self.headers['Content-Type']})
			words = str(form['input'])
			words= words[27:]
			words=words[:-2]
			LatinWords = []
			PigLatin = ''
			wordlist = words.split()
			for i in wordlist:
				if i[0] in 'aeiou' or i[0] in 'AEIOU':
					temp = ''.join([i,'yay'])
					LatinWords.append(temp)
				else:
					vowel=0
					for j in range(len(i)):
						if i[j] in'aeiou' or i[j] in "AEIOU":
							vowel=1
							temp = ''.join([i[j:],i[:j],'ay'])
							LatinWords.append(temp)
							break
					if vowel == 0:
						temp = ''.join([i,'ay'])
						LatinWords.append(temp)

			#Pig = ('[' + ', '.join(Pigwords) + ']')
			#Pig = Pig.replace(',', '')
			#print Pig
			for words in LatinWords:
				PigLatin=PigLatin+words+" "
		self.send_response(200)
		self.send_header('Content-type','text/html')
		self.end_headers()
		self.wfile.write(str(PigLatin))
		return
try:
	#Create a web server and define the handler to manage the
	#incoming request
	server = HTTPServer(('', PORT_NUMBER), myHandler)
	print 'Started httpserver on port ' , PORT_NUMBER
	
	#Wait forever for incoming htto requests
	server.serve_forever()
except KeyboardInterrupt:
	print '^C received, shutting down the web server'
	server.socket.close()
print "Serving at port", PORT
httpd.serve_forever(),i[:j]
