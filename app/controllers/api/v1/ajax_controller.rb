class Api::V1::AjaxController < ApplicationController
  def case6
    render json: { current_date: Time.current.strftime('%T') }
  end

  def case7
    headers['Cache-Control'] = 'no-store'
    render json: { current_date: Time.current.strftime('%T') }
  end
end
