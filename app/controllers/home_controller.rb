class HomeController < ApplicationController
  def case1
  end

  def case1_other
    render :back
  end

  def case2
    headers['Cache-Control'] = 'no-store'
  end

  def case2_other
    render :back
  end

  def case3
    headers['Cache-Control'] = "no-cache, private, max-age=0"
  end

  def case3_other
    render :back
  end

  def case4
    # headers['Cache-Control'] = "must-revalidate, private, max-age=10"
    expires_in 10.seconds
  end

  def case4_other
    render :back
  end

  def case5
    blog = Blog.last
    # headers['Cache-Control'] = "no-cache, private, max-age=0"
    if fresh_when(blog)
      p 'キャッシュ使用中'
    else
      p 'キャッシュ未使用'
    end
  end

  def case5_other
    render :back
  end

  def case5_create
    Blog.create!

    # redirect_toはfresh_when(blog)を通ってもキャッシュしてくれないので、ページを表示する redirect_to home_case5_url, notice: 'モデルを追加しました'
    flash.now[:notice] = 'モデルを追加しました'
    render :back
  end

  def case6
    headers['Cache-Control'] = 'no-store'
  end

  def case6_other
    render :back
  end

  def case7
  end

  def case7_other
    render :back
  end
end
