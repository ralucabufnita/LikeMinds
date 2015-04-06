class User < ActiveRecord::Base
#  has_one :user_detail

  has_many :interests
  has_many :ideas

  # Regex
  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  :email
  :name
  :username
  :firstName
  :lastName
  :city
  :state
  :zipCode
  :phone
  :location
  :created_at
  :current_sign_in_at
  :last_sign_in_at
  :sign_in_count

end
