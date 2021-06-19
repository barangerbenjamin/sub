class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all
    @total = @subscriptions.map(&:price).sum
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def subscription_params
    params.require(:subscription).permit(:name, :price, :start_at, :ends_at)
  end
end
