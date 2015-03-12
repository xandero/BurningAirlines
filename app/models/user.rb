# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  is_admin        :boolean          default("false")
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :reservations
end
