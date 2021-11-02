require "test_helper"

class CommentTest < ActiveSupport::TestCase
  def comment
    @comment ||= comments(:one)
  end

  test "fixture must be valid" do
    assert comment.valid?
  end
end
