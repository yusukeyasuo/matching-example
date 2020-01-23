class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum sex: { 男: 0, 女: 1 }

  mount_uploader :img_name, ImgNameUploader

  validates :img_name, presence: true
end
