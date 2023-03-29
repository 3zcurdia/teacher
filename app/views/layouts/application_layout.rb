# frozen_string_literal: true

class ApplicationLayout < ApplicationView
  include Phlex::Rails::Layout

  def template
    html do
      head do
        meta(charset: "utf-8")
        title { yield(:title) || "Teacher" }
        meta(name: "viewport", content: "width=device-width,initial-scale=1")
        csrf_meta_tags
        csp_meta_tag
        link(rel: "stylesheet", href: "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css")
        stylesheet_link_tag "application", media: "all"
        javascript_importmap_tags
      end

      body do
        section(class: "section") do
          div(class: "container") do
            h1(class: "title") { yield(:title) }
            yield
          end
        end
      end
    end
  end
end
