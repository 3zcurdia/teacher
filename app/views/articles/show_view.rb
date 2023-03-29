# frozen_string_literal: true

module Articles
  class ShowView < ApplicationView
    include Phlex::Rails::Helpers::Truncate
    include Phlex::Rails::Helpers::Localize
    attr_reader :article

    def initialize(article:)
      @article = article
    end

    def template
      render TitleizedContentComponent.new do |component|
        component.title { article.title }
        component.subtitle { localize article.published_at.to_date, format: :long }
        component.content { truncate article.content, length: 128 }
      end

      # h2(class: "title is-4") { article.title }
      # h4(class: "subtitle is-4") { localize article.published_at.to_date, format: :long }
      # div(class: "content") do
      #   truncate article.content, length: 128
      # end
    end
  end
end
