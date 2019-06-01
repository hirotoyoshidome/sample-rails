class UseFormController < ApplicationController
  def up
    render 'use_form/up'
  end

  def down
    @val = params[:name]
    #postの値を受け取るときもparamsを使用して取得できる
    #routes.rbでこのアクションはpostに設定している
    render 'use_form/down'
  end
end
