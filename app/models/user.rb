class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name,	length: { minimum: 2}
  validates :name,	length: { maximum: 20}
  validates :introduction, length: { maximum: 50}
  validates :name, presence: true
  has_many :books, dependent: :destroy
  attachment :profile_image
end

# class User < ApplicationRecord
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :trackable, :validatable
# end
