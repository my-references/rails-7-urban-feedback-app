# frozen_string_literal: true

class User < ApplicationRecord
  devise :masqueradable, :database_authenticatable, :confirmable, :registerable, :trackable, :recoverable,
         :rememberable, :validatable, :omniauthable
  validates :email, presence: true
  validates :email, uniqueness: true

  has_one_attached :avatar
  has_person_name
  has_and_belongs_to_many :inboxes
  has_many :notifications, as: :recipient
  has_many :services
end
