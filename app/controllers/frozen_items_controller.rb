class FrozenItemsController < ApplicationController
  before_action :set_frozen_item, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /frozen_items or /frozen_items.json
  def index
    @frozen_items = FrozenItem.all
  end

  # GET /frozen_items/1 or /frozen_items/1.json
  def show
  end

  # GET /frozen_items/new
  def new
    @frozen_item = FrozenItem.new
  end

  # GET /frozen_items/1/edit
  def edit
  end

  # POST /frozen_items or /frozen_items.json
  def create
    @frozen_item = FrozenItem.new(frozen_item_params)

    respond_to do |format|
      if @frozen_item.save
        format.html { redirect_to frozen_item_url(@frozen_item), notice: "Frozen item was successfully created." }
        format.json { render :show, status: :created, location: @frozen_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frozen_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frozen_items/1 or /frozen_items/1.json
  def update
    respond_to do |format|
      if @frozen_item.update(frozen_item_params)
        format.html { redirect_to frozen_item_url(@frozen_item), notice: "Frozen item was successfully updated." }
        format.json { render :show, status: :ok, location: @frozen_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frozen_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frozen_items/1 or /frozen_items/1.json
  def destroy
    @frozen_item.destroy

    respond_to do |format|
      format.html { redirect_to frozen_items_url, notice: "Frozen item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frozen_item
      @frozen_item = FrozenItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frozen_item_params
      params.require(:frozen_item).permit(:frozen_item, :date_on_package, :user_id)
    end
end
