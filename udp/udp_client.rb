require 'socket'

s = UPDSocket.new
s.send("hello", 0, 'localhost', 2121) ;
