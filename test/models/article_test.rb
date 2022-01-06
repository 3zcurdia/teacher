# frozen_string_literal: true

require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  def article
    @article ||= articles(:one)
  end

  test "fixture must be valid" do
    assert article.valid?
  end
end
