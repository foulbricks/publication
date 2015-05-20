class Publication < ActiveRecord::Base
  has_and_belongs_to_many :people
  
  mount_uploader :pub_image, PubImageUploader
  
  validates :name, :headline, :description_text, :pub_date, :presence => true
end
