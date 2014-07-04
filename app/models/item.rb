class Item < ActiveRecord::Base


  belongs_to :user

  has_one :collection, dependent: :destroy
  has_many :tags, dependent: :destroy

  mount_uploader :picture, PictureUploader
end
  