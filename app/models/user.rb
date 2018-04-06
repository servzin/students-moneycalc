# -*- coding: utf-8 -*-
class User < ApplicationRecord
  VALID_EMAIL_REGEX = /[\wа-я\.\+]+@([\wа-я]+\.?)+/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password_digest, presence: true

  before_save { self.email = email.downcase }
end
