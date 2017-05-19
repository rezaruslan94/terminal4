class User < ApplicationRecord
  has_and_belongs_to_many :roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  def admin?
    roles.include? Role.admin_role
  end
  def qc?
    roles.include? Role.qc_role
  end
  def faps?
    roles.include? Role.faps_role
  end
end
