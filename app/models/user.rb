class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :firstname, presence: true, length:{maximum: 25}
  validates :lastname, presence:false ,length:{maximum: 50}
  validates :company, presence:false ,length:{maximum: 150}
  validates :jobtitle, presence:false ,length:{maximum: 150}
  validates :tel, presence:false ,length:{maximum: 150}

         VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true,
                   uniqueness: { case_sensitive: false},
                   length:{ maximum: 150},
                   format: {with: VALID_EMAIL_REGEX}


end
