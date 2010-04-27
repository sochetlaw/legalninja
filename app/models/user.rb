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
end
