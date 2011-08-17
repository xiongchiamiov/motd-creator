#!/usr/bin/env ruby

require 'optparse'

options = ARGV.getopts('', 'font:', 'fortune-file:', 'width:')
options['font'] ||= 'basic'
options['width'] ||= 79
options['width'] = options['width'].to_i

borderChars = ['~', '*']

options['width'].times.each {|i| print borderChars[i%2]}
print "\n"
borderChars.reverse!

lines = `hostname -s | figlet -f #{options['font']} -c -w #{options['width'] - 2}`.split("\n")
lines += `fortune #{options['fortune-file']}| figlet -f term -c -w \
		  #{options['width']}`.split("\n")

lastBorderChar = '~'
lines.each_with_index do |line, i|
	print borderChars[i%2]
	print line
	print ' ' * (options['width'] - 2 - line.length)
	print borderChars[i%2]
	print "\n"

	lastBorderChar = borderChars[i%2]
end

borderChars.reverse! if lastBorderChar == borderChars[0]
options['width'].times.each {|i| print borderChars[i%2]}
print "\n"

