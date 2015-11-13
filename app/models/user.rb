class User < ActiveRecord::Base

  acts_as_authentic

  acts_as_authentic do |c|
    c.crypto_providers = Authlogic::CryptoProvider::Sha512
  end

  validates_presence_of :name, :username, :email, :bio
  validates :bio, length: { minimum: 20 }
  validates :username, length: { minimum: 5 }

  has_many :posts

end
