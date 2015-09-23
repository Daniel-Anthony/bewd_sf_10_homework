# == Schema Information
#
# Table name: reviews
#
#  id              :integer          not null, primary key
#  author          :string
#  body            :text
#  reviewable_id   :integer
#  reviewable_type :string

class Review < ActiveRecord::Base
  belongs_to :reviewable, polymorphic: true
end
