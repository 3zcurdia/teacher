# frozen_string_literal: true

require "test_helper"

class CommentTest < ActiveSupport::TestCase
  def comment
    @comment ||= comments(:one)
  end

  test "fixture must be valid" do
    assert_predicate comment, :valid?
  end
end
