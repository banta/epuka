require 'spec_helper'

describe FeedController do

  describe "GET 'rss'" do
    it "returns http success" do
      get 'rss'
      response.should be_success
    end
  end

end
