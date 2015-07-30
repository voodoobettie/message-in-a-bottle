class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

  #attr_accessor :login

  def login=(login)
  	@login = login
  end

  def login
  	@login || self.username || self.email
  end
end
