class Article < ActiveRecord::Base
	validates :foto, :presence => true
	validates :title, presence: true, length: { minimum: 5 }

	has_attached_file :foto, :styles => { :normal => "555x325#" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/

end