class AddResumeToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :resume, :text
  end
end