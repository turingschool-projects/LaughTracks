class GenericImageDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :comedians, :image_url, "https://m.media-amazon.com/images/G/01/imdb/images/nopicture/medium/name-2135195744._CB470041852_.png"
  end
end
