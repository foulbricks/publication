class Person < ActiveRecord::Base
  has_and_belongs_to_many :publications
  
  mount_uploader :photo, PhotoUploader
  
  validates :first_name, :last_name, :email, :presence => true
  
  
  def name
    [first_name, last_name].join(" ")
  end
end
