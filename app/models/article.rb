# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments, inverse_of: :article, dependent: :destroy
  validates :title, :content, presence: true

  scope :near, lambda { |lon, lat|
    point = RGeo::Geographic.spherical_factory(srid: 4326).point(lon, lat)
    where(Article.arel_table[:lonlat].st_distance(point).lt(50_000))
  }

  attr_writer :latitude, :longitude

  before_save :updates_lonlat, if: :lonlat?

  def latitude
    lonlat&.y || @latitude
  end

  def longitude
    lonlat&.x || @longitude
  end

  private

  def lonlat?
    @longitude.present? && @latitude.present?
  end

  def updates_lonlat
    self.lonlat = RGeo::Geographic.spherical_factory(srid: 4326).point(@longitude, @latitude)
  end
end
