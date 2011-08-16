#!/usr/bin/env ruby

borderChars = ['~', '*']

79.times.each {|i| print borderChars[i%2]}
print "\n"
borderChars.reverse!

lines = `hostname -s | figlet -f basic -c -w 77`.split("\n")
lines += `fortune | figlet -f term -c -w 77`.split("\n")

lastBorderChar = '~'
lines.each_with_index do |line, i|
	print borderChars[i%2]
	print line
	print ' ' * (77 - line.length)
	print borderChars[i%2]
	print "\n"

	lastBorderChar = borderChars[i%2]
end

borderChars.reverse! if lastBorderChar == borderChars[0]
79.times.each {|i| print borderChars[i%2]}
print "\n"

