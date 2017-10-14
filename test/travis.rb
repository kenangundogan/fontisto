#!/usr/bin/env ruby
result = `sass sass/fontisto/fontisto.scss fontisto.css`
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('fontisto.css')
puts "SASS compile was successful."
