# 第2章　基本ページの作成
# Railsでは基本的に_pathを使い、リダイレクトの場合のみ_urlを使用します。
# インスタンス変数
<!--<% provide(:title, @user.name) %>-->
<!--<h1>-->
<!--  <%= @user.name %>, <%= @user.email %>-->
<!--</h1>-->

# rails s
# Attendance.new(id: 3, worked_on: "2019-05-02", started_at: "2019-05-02 18:00:00", finished_at: "2019-05-02 08:00:00", note: "", user_id: 1)
# attendance = Attendance.new(id: 3, worked_on: "2019-05-02", started_at: "2019-05-02 18:00:00", finished_at: "2019-05-02 08:00:00", note: "", user_id: 1)
# attendance.save
# attendance.errors.full_messages