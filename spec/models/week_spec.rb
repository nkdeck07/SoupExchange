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

require 'spec_helper'

describe Week do

todaysDate = Date.new
nextWeek = todaysDate + 7

  before { @week = Week.new(date_start: todaysDate, date_end: nextWeek) }

  subject { @week }

  it { should respond_to (:date_start) }
  it { should respond_to (:date_end) }
  it { should respond_to (:soups) }
  it { should respond_to (:users) }

  describe "when date start is not 7 days before date end" do
    before { @week.date_start = " " }
    it { should_not be_valid }
  end

end