class CouponsController < ApplicationController
  before_action :logged_in_user, only: [:new, :confirm, :finish]
  def new
    @coupon = current_user.coupons.new
  end

  def confirm
    @coupon = Coupon.new(coupon_params)
    render :new if @coupon.invalid?
  end

  def finish
    @coupon = Coupon.new(coupon_params)
    if @coupon.save
      redirect_to root_path
      flash[:notice] = "申し込みが完了しました。2営業日以内にご連絡を致します。"
    else
      render :new
    end
  end

  def edit
  end

  def destory
  end

  private
  def coupon_params
    params.require(:coupon).permit(:user_id, :buying)
  end
end
