# frozen_string_literal: true

module Articles
  class IndexView < ApplicationView
    include Phlex::Rails::Helpers::ContentFor

    attr_reader :articles

    def initialize(articles:)
      @articles = articles
    end

    def template
      content_for(:title, "Chunky Bacon")

      articles.map do |article|
        render Articles::ShowView.new(article: article)
      end
    end
  end
end
