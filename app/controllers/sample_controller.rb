class SampleController < ApplicationController
  def up
    @param = params[:key]
    @data = Sample.all #DBのデータをすべて取ってくる
    render "sample/up"
  end

  def down
    @name = 'mike'
    render "sample/down"
  end
end
