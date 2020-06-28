class HomeController < ApplicationController
  def case1
  end

  def case1_other
  end

  def case2
    headers['Cache-Control'] = 'no-store'
  end

  def case2_other
  end

  def case3
    headers['Cache-Control'] = "no-cache, private, max-age=0"
  end

  def case3_other
  end

  def case4
    expires_in 10.seconds
  end

  def case4_other
  end

  def case5
    blog = Blog.last
    if fresh_when(blog)
      p 'キャッシュ使用中'
    else
      p 'キャッシュ未使用'
    end
  end

  def case5_other
  end

  def case5_create
    Blog.create!
    redirect_to home_case5_url, notice: 'モデルを追加しました'
  end

  def case6
    headers['Cache-Control'] = 'no-store'
  end

  def case6_other
  end

  def case7
  end

  def case7_other
  end
end
