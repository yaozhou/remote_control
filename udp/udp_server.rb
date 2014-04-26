require 'socket'

s = UDPSocket.new
s.bind('0.0.0.0', 2121)

loop do
  text, sender = s.recvfrom(16)  
  puts text
  `xdotool key Up` if text == 'up'
  `xdotool key Down` if text == 'down'
end
