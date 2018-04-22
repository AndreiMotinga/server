class User < ActiveRecord::Base
  include Stripe::Callbacks

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  belongs_to :plan, optional: true
  has_many :posts

  def save_and_make_payment(plan, card_token)
    begin
      self.plan = plan
      customer = Stripe::Customer.create(
        source: card_token,
        plan: plan.stripeid,
        email: email,
      )
      self.stripe_customer_id = customer.id
      self.subscribed_at = Time.at(customer.subscriptions.first.created)
      self.subscription_expires_at = Time.at(customer.subscriptions.first.current_period_end)
      save
    rescue Stripe::CardError => e
      errors.add :credit_card, e.message
    end
  end

  def subscribed?
    plan.present?
  end
end
