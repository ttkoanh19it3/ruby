class DanhmuctacgiaController < ApplicationController
  before_action :set_danhmuctacgium, only: %i[ show edit update destroy ]

  # GET /danhmuctacgia or /danhmuctacgia.json
  def index
    @danhmuctacgia = Danhmuctacgium.all
  end

  # GET /danhmuctacgia/1 or /danhmuctacgia/1.json
  def show
  end

  # GET /danhmuctacgia/new
  def new
    @danhmuctacgium = Danhmuctacgium.new
  end

  # GET /danhmuctacgia/1/edit
  def edit
  end

  # POST /danhmuctacgia or /danhmuctacgia.json
  def create
    @danhmuctacgium = Danhmuctacgium.new(danhmuctacgium_params)

    respond_to do |format|
      if @danhmuctacgium.save
        format.html { redirect_to @danhmuctacgium, notice: "Danhmuctacgium was successfully created." }
        format.json { render :show, status: :created, location: @danhmuctacgium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @danhmuctacgium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danhmuctacgia/1 or /danhmuctacgia/1.json
  def update
    respond_to do |format|
      if @danhmuctacgium.update(danhmuctacgium_params)
        format.html { redirect_to @danhmuctacgium, notice: "Danhmuctacgium was successfully updated." }
        format.json { render :show, status: :ok, location: @danhmuctacgium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @danhmuctacgium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danhmuctacgia/1 or /danhmuctacgia/1.json
  def destroy
    @danhmuctacgium.destroy
    respond_to do |format|
      format.html { redirect_to danhmuctacgia_url, notice: "Danhmuctacgium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danhmuctacgium
      @danhmuctacgium = Danhmuctacgium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def danhmuctacgium_params
      params.require(:danhmuctacgium).permit(:mtg, :ten_tacgia, :website, :ghichu)
    end
end
