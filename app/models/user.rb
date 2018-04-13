# -*- coding: utf-8 -*-
class User < ApplicationRecord
  has_secure_password
  VALID_EMAIL_REGEX = /[\wа-я\.\+]+@([\wа-я]+\.?)+/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password_digest, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  before_save { self.email = email.downcase }
end
