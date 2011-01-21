#!/usr/bin/env ruby

require 'cgi'
require 'rubygems'
require 'net/https'
require 'open-uri'
require 'json'
#require 'fileutils'
#require 'erb'
#require 'yaml'

cgi = CGI.new
h = cgi.params
puts "Content-Type: text/xml"
puts


#uri = URI.parse("https://github.com/api/v1/json/#{login}")
#uri = URI.parse("http://www.wikispeedia.org/a/marks_bb.php?name=10&nelat=40.94&swlat=40.86&nelng=-76.78&swlng=-76.86")
#	name is pointlessly required
#uri = URI.parse("http://www.wikispeedia.org/a/marks_bb.php?name=all&nelat=40.9407&swlat=40.905&nelng=-76.789&swlng=-76.851")
#	NE 40.940196,-76.788454 - 40.933193,-76.786909 - 40.942011,-76.783133 - 40.940714,-76.788626
#	SW 40.861178,-76.853514 - 40.883375,-76.848364 - 40.896093,-76.86347  - 40.905305,-76.851282
#40.920742,-76.814718

uri = URI.parse("http://www.wikispeedia.org/ralph/marks_result.php?name=100&nelat=40.9407&swlat=40.905&nelng=-76.789&swlng=-76.851")

http = Net::HTTP.new(uri.host, uri.port)
#http.use_ssl = true
#http.verify_mode = OpenSSL::SSL::VERIFY_NONE
request = Net::HTTP::Get.new(uri.request_uri)
puts http.request(request).body

#puts '<markers><marker label="Ben de Waal" lat="40.86100000" lng="-76.78100000"   mph="45"  kph="0"   cog="127" /><marker label="George Wendt III" lat="40.86141080" lng="-76.79745465"   mph="35"  kph="0"   cog="23" /><marker label="George Wendt III" lat="40.86161365" lng="-76.79516275"   mph="25"  kph="0"   cog="198" /><marker label="George Wendt III" lat="40.86247023" lng="-76.79536773"   mph="25"  kph="0"   cog="113" /><marker label="George Wendt III" lat="40.86266108" lng="-76.79678732"   mph="35"  kph="0"   cog="24" /><markers>'
