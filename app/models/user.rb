class User < ApplicationRecord
  has_one :company
  has_one :customer
  # attr_accessor :iscompany
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
