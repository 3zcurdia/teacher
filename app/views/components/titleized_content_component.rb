# frozen_string_literal: true

class TitleizedContentComponent < ApplicationComponent
  include Phlex::DeferredRender

  def template
    h2(class: "title is-4", &@title)
    h4(class: "subtitle is-5", &@subtitle) if @subtitle
    div(class: "content", &@content)
  end

  def title(&block) = @title = block
  def subtitle(&block) = @subtitle = block
  def content(&block) = @content = block
end
