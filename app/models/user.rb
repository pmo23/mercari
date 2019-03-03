class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  # validates :nickname, :last_name, :first_name, :last_name_kana, :first_name_kana, :date_of_birth, presence: true

   def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        nickname: User.dummy_nickname(auth),
        email:    User.dummy_email(auth),
        password: Devise.friendly_token[0, 20]
      )
    end

    user
  end

  private

  def self.dummy_email(auth)
    if auth.provider == "facebook"#facebook時の処理
    "#{auth.uid}-#{auth.provider}@example.com"
    else
    "#{auth.info.email}"
    end
  end

  def self.dummy_nickname(auth)
    "#{auth.info.name}"
  end
end
