class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :tasks
         has_many :roles
         multiroles initial: :potential do
        roles [:superadmin, :participant, :guestuser]
         # dynamically creates the above methods for getting and setting for all roles
    end
    end