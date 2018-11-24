require 'test_helper'

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get latest" do
    get article_latest_url
    assert_response :success
  end

end
