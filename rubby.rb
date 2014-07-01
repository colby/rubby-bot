#!/usr/bin/env ruby

require 'socket'

hostname = 'chat.freenode.net'
port     = 6667

irc = TCPSocket.new hostname, port

irc.puts "USER rubby 0 * :rubby bot"
irc.puts "NICK rubby"
irc.puts "JOIN #infoforcefeed"

while line = irc.gets
  puts line
end

irc.close
