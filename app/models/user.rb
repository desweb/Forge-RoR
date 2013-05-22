class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :type, :state, :firstname, :lastname
  # attr_accessible :title, :body
end



#    add_column :users, :type, :integer
#add_column :users, :state, :integer
#add_column :users, :firstname, :string
#add_column :users, :lastname, :string