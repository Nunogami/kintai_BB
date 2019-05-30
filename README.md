# 第2章　基本ページの作成
# Railsでは基本的に_pathを使い、リダイレクトの場合のみ_urlを使用します。

<!--class User < ApplicationRecord-->
<!--  before_save { self.email = email.downcase }-->
<!--  validates :name,  presence: true, length: { maximum: 50 }-->
<!--  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i-->
<!--  validates :email, presence: true, length: { maximum: 255 },-->
<!--                    format: { with: VALID_EMAIL_REGEX },-->
<!--                    uniqueness: { case_sensitive: false }-->
<!--end-->

<!--rails generate migration add_password_digest_to_users password_digest:string-->