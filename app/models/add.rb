# frozen_string_literal: true

class Add < ApplicationRecord
  # belongs_to :user
  has_one :cart
  # has_many_attached :images
end
