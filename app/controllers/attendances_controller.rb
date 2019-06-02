class AttendancesController < ApplicationController
    
def create
  @user = User.find(params[:user_id])
  @attendance = @user.attendances.find_by(worked_on: Date.today)
  if @attendance.started_at.nil?
    @attendance.update_attributes(started_at: current_time)
    flash[:info] = 'おはようございます。'
  elsif @attendance.finished_at.nil?
    @attendance.update_attributes(finished_at: current_time)
    flash[:info] = 'おつかれさまでした。'
  else
    flash[:danger] = 'トラブルがあり、登録出来ませんでした。'
  end
  redirect_to @user
end
end
