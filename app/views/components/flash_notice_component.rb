# frozen_string_literal: true

class FlashNoticeComponent < ApplicationComponent
  attr_reader :flash

  def initialize(flash:)
    @flash = flash
  end

  def template
    return unless render?

    div(class: "notification #{notification_class} is-light") do
      button(class: "delete")
      text notification_message
    end
  end

  private

  def render?
    flash.present? && (flash[:notice].present? || flash[:alert].present?)
  end

  def notification_message
    flash[:notice] || flash[:alert]
  end

  def notification_class
    if flash[:notice].present?
      "is-primary"
    elsif flash[:alert].present?
      "is-warning"
    end
  end
end
