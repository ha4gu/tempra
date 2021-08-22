class DummiesController < ApplicationController
  before_action :set_dummy, only: [:show, :edit, :update, :destroy]

  # GET /dummies
  def index
    @dummies = Dummy.with_attached_image
  end

  # GET /dummies/1
  def show
  end

  # GET /dummies/new
  def new
    @dummy = Dummy.new
  end

  # GET /dummies/1/edit
  def edit
  end

  # POST /dummies
  def create
    @dummy = Dummy.new(dummy_params)

    if @dummy.save
      redirect_to @dummy, notice: "Dummy was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /dummies/1
  def update
    if @dummy.update(dummy_params)
      redirect_to @dummy, notice: "Dummy was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /dummies/1
  def destroy
    @dummy.destroy
    redirect_to dummies_url, notice: "Dummy was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dummy
    @dummy = Dummy.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dummy_params
    params.require(:dummy).permit(:title, :detail, :stock, :ordered_on, :confirmed, :image)
  end
end
