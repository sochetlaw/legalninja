# == Schema Information
# Schema version: 20100427204116
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  first              :string(255)
#  last               :string(255)
#  middle             :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#

require 'spec_helper'

describe User do

  before(:each) do
    @attr = { :first => "Example User", :email => "user@example.com" }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name"
end

