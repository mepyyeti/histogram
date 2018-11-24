#!/usr/bin/env ruby
#histogram.rb

#line18 is key driver for histogram
#Hash.new(n) allows hash to store a count as element in l18
#{} and Hash.new() produce nil, crashing script.

go = true

while go

	puts "what's your text?"
	input = gets.chomp.to_s
	
	input_list = input.split(" ")
	
	freq = Hash.new(0)
	input_list.each { |word| freq[word] += 1 }
	
	freq = freq.sort_by {|a,b| b}
	freq.each do |x,y|
		puts "word: #{x} | #{y}"
	end
	
	puts "want to go again? [y/n] "
	choice = gets.chomp
	
	unless choice == 'y' || choice == 'yes'
		go = false
	end
end
