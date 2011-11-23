require 'open-uri'
open("http://www.google.com") do |f|
	f.each_line{|line| p line}
	puts f.base.uri
	puts f.content_type
	puts f.charset
	puts f.content_encoding
	puts f.last_modified
end