class User < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_many :groupes, through: :members, dependent: :destroy
  has_many :groupe_as_admin, :class_name => 'Groupe', :foreign_key => 'user_id'


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
