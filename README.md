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
      <!--I can not edit the future from the day-->
  <% if Date.today < Date.current %>
    <%= af.time_field :started_at, :readonly => true, class: 'readonly' %>
  <% else %>
    <%= af.time_field :started_at, class: "form-control"  %>
  <% end %>

$ git add -A
$ git commit -m "Additional function 9.2 completed"
$ git checkout master
$ git merge basic-information

$ git push
$ git push heroku
$ heroku pg:reset DATABASE
$ heroku run rails db:migrate
$ heroku run rails db:seed
$ heroku restart

$ rails c
[1] pry(main)&gt; user = User.find(3)
[2] pry(main)&gt; user.update_attribute :admin, true


<% if current_user.try(:admin?) %>
      <div class="page-header">
        <h1>管理者マイページ</h1>
      </div>
      <p class="admin_btn col-xs-offset-1 col-xs-10 col-xs-offset-1"><%= link_to "管理画面", "/admin" %></p>
    <% else %>
      <div class="page-header">
        <h1>マイページ<br>
          <small><%= current_user.name %>さん、こんにちは！</small>
        </h1>
      </div>
      <p>マイページでは学習進捗を確認できます。<br>
         自分の学習進捗に合わせてカリキュラムを選んでください。
      </p>
    <% end %>

rails console --sandbox

<!--<%= label_tag :name, "性別" %>-->
<!--<%= select_tag :gender, options_for_select(User.genders), include_blank: true %>-->

.floor_to(15.minutes)

https://cryptic-peak-58402.herokuapp.com/
