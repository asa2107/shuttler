# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  date        :datetime
#  start_time  :datetime
#  end_time    :datetime
#  recurring   :boolean
#  no_of_weeks :integer
#  location    :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  match_id    :integer
#

class Listing < ApplicationRecord
  validates :start_time,
            :end_time,
            :location, presence: true
  belongs_to :user
  belongs_to :match


#  has_many :matches, :dependent => :destroy
end
