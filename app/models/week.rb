# == Schema Information
#
# Table name: weeks
#
#  id         :integer         not null, primary key
#  date_start :date
#  date_end   :date
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Week < ActiveRecord::Base
  attr_accessible :date_end, :date_start
  has_many:users
  has_many:soups
end
