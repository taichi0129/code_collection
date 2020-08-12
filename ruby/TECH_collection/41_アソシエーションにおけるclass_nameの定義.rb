# app/models/event.rb
class Event < ActiveRecord::Base
  belongs_to :user
  has_many :tickets

  validates :name, length: { maximum: 50 }, presence: true
  validates :place, length: { maximum: 100 }, presence: true
  validates :content, length: { maximum: 2000 }, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :start_time_should_be_before_end_time

  def created_by?(user)
    return false unless user
    owner_id == user.id
  end

  private

  def start_time_should_be_before_end_time
    return unless start_time && end_time

    if start_time >= end_time
      errors.add(:start_time, 'は終了時間よりも前に設定してください')
    end
  end
end

# 現在は@event.userのような形で、@eventに紐づいたuserを取得することができます。
# アソシエーションのメソッド名とクラス名が一致しているときはそれで問題ありませんが、メソッド名を変えたいこともあります。
# EventモデルとUserモデルの関係を、@event.ownerと記述して取得できるようにするにはどうすればよいか、調べてコードを記述してください。

# belongs_to :userをbelongs_to :owner, class_name: 'User'と書き換える。