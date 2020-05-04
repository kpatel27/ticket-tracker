class TicketsController < ApplicationController
  before_action :get_ticket, only: [:show, :edit, :update, :destroy]
  before_action :require_session, except: [:index, :show]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    binding.pry
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      flash[:notice] = 'Ticket successfully created!'
      redirect_to ticket_path(@ticket)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ticket.update(ticket_params)
      flash[:notice] = 'Ticket successfully updated!'
      redirect_to ticket_path(@ticket)
    else
      render edit_ticket_path(@ticket)
    end
  end

  def destroy
    @ticket.delete
    flash[:notice] = 'Ticket successfully deleted!'
    redirect_to tickets_path
  end

  private

  def get_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:name, :body, :status, :project_id, tag_ids: [])
  end
end
