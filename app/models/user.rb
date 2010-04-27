# == Schema Information
# Schema version: 20100427160557
#
# Table name: users
#
#  id         :integer         not null, primary key
#  first      :string(255)
#  last       :string(255)
#  middle     :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_many :microposts

  attr_accessor :password

  attr_accessible :first, :last, :middle, :email, :password, :password_confirmation

  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_presence_of :first, :last, :email

  validates_length_of :first, :maximum => 50

  validates_length_of :last, :maximum => 50
  
  validates_length_of :middle, :maximum => 50

  validates_format_of :email, :with => EmailRegex
 
  validates_uniqueness_of :email, :case_sensitve => false

  # Automatically create the virtual attribute 'password_confirmation'.
  validates_confirmation_of :password

  # Password validations.
  validates_presence_of :password
  validates_length_of   :password, :within => 6..40

  before_save :encrypt_password

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end


  private

    def encrypt_password
      self.salt = make_salt
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end

end
