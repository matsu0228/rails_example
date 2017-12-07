class TweetsController < ApplicationController

  # GET /tweets
  def index
    @q = Tweet.search(params[:q])
    @q.sorts = 'tw_create_at desc' if @q.sorts.empty?
    @tweets = @q.result(distinct: true).page(params[:page])    
   
    # chart_data
    @tw_count = @q.result(distinct: true).group( "DATE_FORMAT(tw_create_at, '%Y%m%d')" ).count(:tw_id)
    dates = ['x']
    counts = ['tweets_num']
    @tw_count.each do |d, count|
      dates << d
      counts << count
    end
    gon.tw_count = {:dates => dates, :counts => counts}
    #    binding.pry

    #user_info
    tweets_params()
    @tw_user = @q.result(distinct: true).group(:user_name).order("count_id desc").count
  end

  def tweets_params
    params.fetch(:tweets, {}).permit(:type)
  end
end
