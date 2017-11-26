# == Schema Information
#
# Table name: users
#
# id                  :integer      not null, primary key
# name                :string       not null
# email               :string       not null
# password_digest     :string       not null
# created_at          :datetime
# updated_at          :datetime
# deleted_at          :datetime
# created_by          :integer      not null

class User < ApplicationRecord
  acts_as_paranoid
  has_secure_password # encrypt the password

  # associations
  has_many :bands, foreign_key: :created_by
  has_many :albums, foreign_key: :created_by

  # validations
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :password_digest
end
