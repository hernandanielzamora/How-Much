class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[show update destroy]

  # GET /items
  def index
    @group = Group.find(params[:group_id])
    @payments = Payment.where(group_id: @group.id).order(id: :desc)
    @total_amount = @payments.sum(:amount)
  end

  def new
    @group = Group.find(params[:group_id])
    @payment = Payment.new
  end

  # POST /items
  def create
    @group = Group.find(params[:group_id])
    @payment = @group.payments.build(payment_params) # Build a new entity associated with the group

    @payment.user_id = current_user.id # Set the user association
    @payment.author_id = current_user.id # Set the author association (if applicable)

    if @payment.save
      redirect_to group_payments_path(@group), notice: 'Transaction added successfully'
    else
      render :new, alert: 'Failed to add transaction'
    end
  end

  # DELETE /items/1
  def destroy
    @payment = Payment.find(params[:id])

    if @payment.destroy
      redirect_to group_payments_path, notice: 'Transaction removed successfully'
    else
      render :index, alert: 'Failed to remove Transaction'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @item = Payment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:payment).permit(:name, :amount, :group_id)
  end
end