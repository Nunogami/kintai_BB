class Attendance < ApplicationRecord
  belongs_to :user

  def started_at_blank
    
    if started_at.blank? && finished_at.present?
      errors.add(:finished_at,"出勤時間がありません！")
    end
  end
  
  validate :finished_at_cannot_be_faster_than_started_at

  def finished_at_cannot_be_faster_than_started_at
    if started_at.to_i > finished_at.to_i
      errors.add(:finished_at, "退勤時間は出勤時間よりに前にしてください！")
    end
  end
 
end
