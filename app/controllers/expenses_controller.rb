class ExpensesController < ApplicationController
  def index

     @expenses = Expense.order("date DESC")

     if params[:concept].present?
		@expenses = @expenses.where("concept LIKE ?", "%#{params[:concept]}%")
	end

  end
end
