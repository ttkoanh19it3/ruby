class NhaxuatbansController < ApplicationController
  before_action :set_nhaxuatban, only: %i[ show edit update destroy ]

  # GET /nhaxuatbans or /nhaxuatbans.json
  def index
    @nhaxuatbans = Nhaxuatban.all
  end

  # GET /nhaxuatbans/1 or /nhaxuatbans/1.json
  def show
  end

  # GET /nhaxuatbans/new
  def new
    @nhaxuatban = Nhaxuatban.new
  end

  # GET /nhaxuatbans/1/edit
  def edit
  end

  # POST /nhaxuatbans or /nhaxuatbans.json
  def create
    @nhaxuatban = Nhaxuatban.new(nhaxuatban_params)

    respond_to do |format|
      if @nhaxuatban.save
        format.html { redirect_to @nhaxuatban, notice: "Nhaxuatban was successfully created." }
        format.json { render :show, status: :created, location: @nhaxuatban }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nhaxuatban.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nhaxuatbans/1 or /nhaxuatbans/1.json
  def update
    respond_to do |format|
      if @nhaxuatban.update(nhaxuatban_params)
        format.html { redirect_to @nhaxuatban, notice: "Nhaxuatban was successfully updated." }
        format.json { render :show, status: :ok, location: @nhaxuatban }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nhaxuatban.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nhaxuatbans/1 or /nhaxuatbans/1.json
  def destroy
    @nhaxuatban.destroy
    respond_to do |format|
      format.html { redirect_to nhaxuatbans_url, notice: "Nhaxuatban was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nhaxuatban
      @nhaxuatban = Nhaxuatban.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nhaxuatban_params
      params.require(:nhaxuatban).permit(:maNXB, :ten_NXB, :diachi, :email, :thongtin)
    end
end
