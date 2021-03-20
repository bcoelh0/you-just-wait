class WaitQueuesController < ApplicationController
  before_action :set_wait_queue, only: %i[ show edit update destroy ]

  # GET /wait_queues or /wait_queues.json
  def index
    @wait_queues = wait_queues
  end

  # GET /wait_queues/1 or /wait_queues/1.json
  def show
  end

  # GET /wait_queues/new
  def new
    @wait_queue = wait_queues.new
  end

  # GET /wait_queues/1/edit
  def edit
  end

  # POST /wait_queues or /wait_queues.json
  def create
    @wait_queue = wait_queues.new(wait_queue_params)

    respond_to do |format|
      if @wait_queue.save
        format.html { redirect_to @wait_queue, notice: "Wait queue was successfully created." }
        format.json { render :show, status: :created, location: @wait_queue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wait_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wait_queues/1 or /wait_queues/1.json
  def update
    respond_to do |format|
      if @wait_queue.update(wait_queue_params)
        format.html { redirect_to @wait_queue, notice: "Wait queue was successfully updated." }
        format.json { render :show, status: :ok, location: @wait_queue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wait_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wait_queues/1 or /wait_queues/1.json
  def destroy
    @wait_queue.destroy
    respond_to do |format|
      format.html { redirect_to wait_queues_url, notice: "Wait queue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_wait_queue
    @wait_queue = wait_queues.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wait_queue_params
    params.require(:wait_queue).permit(:name, :description, :destination, :link_queue, :link_subscribe)
  end

  def wait_queues
    @wait_queues ||= current_user.wait_queues
  end
end
