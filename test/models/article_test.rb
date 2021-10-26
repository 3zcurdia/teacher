require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "fixture must be valid" do
    assert articles(:one).valid?
  end
end
