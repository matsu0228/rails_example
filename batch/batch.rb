# -*- coding: utf-8 -*-
require "#{Rails.root}/app/models/user"

  def hello
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


def initialize_api_key()
  keys = {}
  keys['consumer_key']        = CONSUMER_KEY
  keys['consumer_secret']     = CONSUMER_SECRET
# TODO
#  a_token = get_authkey(Encoded_bearer_token)
  
  keys['access_token']        = ** 
    # a_token['access_token']
  keys['access_token_secret'] = ** 
    #a_token['token_type']
  return keys
end

def search_tweets(query)
  keys = initialize_api_key()  
  client = Twitter::REST::Client.new(
                                     consumer_key:        keys['consumer_key'],
                                     consumer_secret:     keys['consumer_secret'], 
                                     access_token:        keys['access_token'],
                                     access_token_secret: keys['access_token_secret'],
                                     )

  since_id = nil
  # count : 取得する件数
  # result_type : 内容指定。recentで最近の内容、popularで人気の内容。
  # exclude : 除外する内容。retweetsでリツイートを除外。
  # since_id : 指定ID以降から検索だが、検索結果が100件以上の場合は無効。
  result_tweets = client.search(query, count: 100, result_type: "recent", exclude: nil, since_id: since_id)

  result_tweets.take(10).each_with_index do |tw, i|
    tweets = Tweets.new(:tw_id => tw.id,
                        :tw_create_at => tw.created_at,
                        :user_name => tw.user.screen_name,
                        :tw_fulltext => tw.full_text
                        )
    p tweets.save
    # puts("#{tw.created_at} : #{tw.id} : #{tw.user.screen_name} : #{tw.full_text}")
  end
end

  def tweet_save
    search_tweets('nttx')
    #search_tweets('NTT-X')
    #tag = URI.encode('@nttxstore')
    #search_tweets(tag)
  end





demo_select()
