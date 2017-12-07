# -*- coding: utf-8 -*-

require "#{Rails.root}/app/models/tweets"
require 'twitter'
require 'uri'
require '/var/www/batch/lib/const_twitter'
require '/var/www/batch/lib/get_authkey'


class Tasks::Demo
  def self.hello
    p "Hello world"
  end
  def demo_insert
    tweets = Tweets.new(:tw_fulltext => 'hoge' )
    p tweets.save
  end
  def demo_select
    tweets = Tweets.all
    p tweets
  end

end
