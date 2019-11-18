class ExpensesController < ApplicationController
  def index

     @expenses = Expense.order("date DESC").where("user_id",current_user.id)

     if params[:concept].present?
		@expenses = @expenses.where("concept LIKE ?", "%#{params[:concept]}%")
	end

  end
end
