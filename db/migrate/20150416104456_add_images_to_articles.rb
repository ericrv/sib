class AddImagesToArticles < ActiveRecord::Migration
  def self.up
  	add_attachment :articles, :foto
  end

  def self.down
  	remove_attachment :articles, :foto
  end
end
