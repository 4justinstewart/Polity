module UsersHelper

  def oauth_consumer
    # Testing only.
    # raise RuntimeError, "You must set  and CONSUMER_SECRET in your server environment." unless ENV['CONSUMER_KEY'] && ENV['CONSUMER_SECRET']
    @consumer ||= OAuth::Consumer.new(
      ENV['TWITTER_API_KEY'],
      ENV['TWITTER_API_SECRET'],
      :site => "https://api.twitter.com"
    )
  end

  def request_token
    if not session[:request_token]
      # this 'host_and_port' logic allows our app to work both locally and on Heroku
      host_and_port = request.host
      host_and_port << ":3000" if request.host == "localhost"

      # the `oauth_consumer` method is defined above
      session[:request_token] = oauth_consumer.get_request_token(
        :oauth_callback => "http://#{host_and_port}/twitter_oauth"
      )
    end
    session[:request_token]
  end

  def new_twitter_client

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = current_user.oauth_token
      config.access_token_secret = current_user.oauth_secret
    end

    client
  end

end

