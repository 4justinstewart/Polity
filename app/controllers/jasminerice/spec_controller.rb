module Jasminerice
  class SpecController <  ActionController::Base
    layout false

    def index
    end

    def fixtures
      render "spec/javascripts/fixtures/#{params[:filename]}"
    end
  end
end
