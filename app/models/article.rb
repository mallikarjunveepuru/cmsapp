class Article
  include Mongoid::Document
  field :name
  field :content
	validates_presence_of :name
	embeds_many :comments  
end
