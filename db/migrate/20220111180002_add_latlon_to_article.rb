class AddLatlonToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :lonlat, :st_point, geographic: true
  end
end
