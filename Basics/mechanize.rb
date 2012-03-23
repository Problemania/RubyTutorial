#!/usr/bin/env ruby

require 'mechanize'

def get_clipper_value()
  # local variables
  url = 'https://clippercard.com/ClipperWeb/login.do'
  username = 'xxx@xxx.com'
  password = 'xxx'
  # notice method chaining:
  amount =
    Mechanize.new.
    # note passing of hash argument
    post(url, :username => username, :password => password).
    # not use of regular expression as hash value
    link_with(:href => /cardValue/i).
    click.
    parser.xpath("//tr/td[contains(.,'Clipper Cash')]").first.
    next_sibling.next_sibling.
    content.match(/\$(\d+\.\d+)/)
  html($1)
end
