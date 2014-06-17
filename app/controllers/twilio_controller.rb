class TwilioController < ApplicationController

  skip_before_action :verify_authenticity_token

  def call
    @client = Twilio::REST::Client.new ENV[ACCOUNT_SID], ENV[AUTH_TOKEN]

    @client.account.calls.create({
      :to => '412-780-3415',  #SEND PHONE NUMBER OF ALDERMAN OFFICE
      :from => '+14129064580',
      :method => 'GET',
      :fallback_method => 'GET',
      :status_callback_method => 'GET',
      :record => 'false'
    })

  end

end

