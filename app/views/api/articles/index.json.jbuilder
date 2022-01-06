# frozen_string_literal: true

json.array! @articles, partial: "article", as: :article
