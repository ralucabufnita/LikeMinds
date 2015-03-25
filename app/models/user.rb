class User < ActiveRecord::Base
#  has_one :user_detail

  has_many :interests
  has_many :ideas

  # Regex
  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

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


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end

  # def self.new_with_session(params,session)
  #   if session["devise.user_attributes"]
  #     new(session["devise.user_attributes"],without_protection: true) do |user|
  #       user.attributes = params
  #       user.valid?
  #     end
  #   else
  #     super
  #   end
  # end

  # def self.from_omniauth(auth, current_user)
  #   authorization = Authorization.where(:provider => auth.provider, :uid => auth.uid.to_s, :token => auth.credentials.token, :secret => auth.credentials.secret).first_or_initialize
  #   if authorization.user.blank?
  #     user = current_user || User.where('email = ?', auth["info"]["email"]).first
  #     if user.blank?
  #       user = User.new
  #       user.password = Devise.friendly_token[0,10]
  #       user.name = auth.info.name
  #       user.email = auth.info.email
  #       if auth.provider == "twitter"
  #         user.save(:validate => false)
  #       else
  #         user.save
  #       end
  #     end
  #     authorization.username = auth.info.nickname
  #     authorization.user_id = user.id
  #     authorization.save
  #   end
  #   authorization.user
  # end


  end
end
