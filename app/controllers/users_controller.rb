class UsersController < ApplicationController
  API_HOST = 'qa-test.funbox.ru'

  def api
    res = Net::HTTP.start(API_HOST) do |http|
      http.request(Net::HTTP::Get.new(request.fullpath))
    end
    render :nothing => true
    response.status = res.code
    response.body = res.body
    response.content_type = res['Content-Type']
  end
end
