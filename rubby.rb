#!/usr/bin/env ruby

require 'socket'

hostname = 'chat.freenode.net'
port     = 6667

irc = TCPSocket.new hostname, port

irc.puts "USER rubby 0 * :rubby bot"
irc.puts "NICK rubby"

while line = irc.gets
  if line.include? 'PING :'
    irc.puts 'PONG'
  end
  puts line
end

irc.close
