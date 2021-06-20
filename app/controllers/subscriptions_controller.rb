class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :edit, :destroy, :update]
  def index
    @subscriptions = Subscription.all
    @total = @subscriptions.map(&:price).sum
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.ends_at = @subscription.start_at + params['subscription']['duration'].to_i.month if params['subscription']['duration'] != 'Unlimited'
    if @subscription.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @subscription.update(subscription_params)
      redirect_to subscription_path(@subscription)
    else
      render :edit
    end
  end

  def destroy
    @subscription.destroy
    redirect_to root_path
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  def subscription_params
    params.require(:subscription).permit(:name, :price, :start_at, :ends_at, :category)
  end
end
