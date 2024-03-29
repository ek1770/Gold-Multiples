class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
    render :json => @transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
    render :json => @transaction
  end

  def create
    @transaction = Transaction.new(params[:transaction])
    if @transaction.save
      render :json => @transaction
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    if @transaction.destroy
      render :text => "Success"
    end
  end 

  def update
    @transaction = Transaction.find(params[:id])
    @transaction[:acquirer] = params[:transaction][:acquirer]
    @transaction[:target] = params[:transaction][:targer]
    @transaction[:announcement_date] = params[:transaction][:announcement_date]
    if @transaction.save
      render :json => @transaction
    end
  end
end
