class TicketStatesController < ApplicationController
  # GET /ticket_states
  # GET /ticket_states.json
  def index
    @ticket_states = TicketState.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ticket_states }
    end
  end

  # GET /ticket_states/1
  # GET /ticket_states/1.json
  def show
    @ticket_state = TicketState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ticket_state }
    end
  end

  # GET /ticket_states/new
  # GET /ticket_states/new.json
  def new
    @ticket_state = TicketState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ticket_state }
    end
  end

  # GET /ticket_states/1/edit
  def edit
    @ticket_state = TicketState.find(params[:id])
  end

  # POST /ticket_states
  # POST /ticket_states.json
  def create
    @ticket_state = TicketState.new(params[:ticket_state])

    respond_to do |format|
      if @ticket_state.save
        format.html { redirect_to @ticket_state, notice: 'Ticket state was successfully created.' }
        format.json { render json: @ticket_state, status: :created, location: @ticket_state }
      else
        format.html { render action: "new" }
        format.json { render json: @ticket_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ticket_states/1
  # PUT /ticket_states/1.json
  def update
    @ticket_state = TicketState.find(params[:id])

    respond_to do |format|
      if @ticket_state.update_attributes(params[:ticket_state])
        format.html { redirect_to @ticket_state, notice: 'Ticket state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ticket_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_states/1
  # DELETE /ticket_states/1.json
  def destroy
    @ticket_state = TicketState.find(params[:id])
    @ticket_state.destroy

    respond_to do |format|
      format.html { redirect_to ticket_states_url }
      format.json { head :no_content }
    end
  end
end
