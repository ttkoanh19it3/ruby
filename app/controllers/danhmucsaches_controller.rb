class DanhmucsachesController < ApplicationController
  before_action :set_danhmucsach, only: %i[ show edit update destroy ]

  # GET /danhmucsaches or /danhmucsaches.json
  def index
    @danhmucsaches = Danhmucsach.all
  end

  # GET /danhmucsaches/1 or /danhmucsaches/1.json
  def show
  end

  # GET /danhmucsaches/new
  def new
    @danhmucsach = Danhmucsach.new
  end

  # GET /danhmucsaches/1/edit
  def edit
  end

  # POST /danhmucsaches or /danhmucsaches.json
  def create
    @danhmucsach = Danhmucsach.new(danhmucsach_params)

    respond_to do |format|
      if @danhmucsach.save
        format.html { redirect_to @danhmucsach, notice: "Danhmucsach was successfully created." }
        format.json { render :show, status: :created, location: @danhmucsach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @danhmucsach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danhmucsaches/1 or /danhmucsaches/1.json
  def update
    respond_to do |format|
      if @danhmucsach.update(danhmucsach_params)
        format.html { redirect_to @danhmucsach, notice: "Danhmucsach was successfully updated." }
        format.json { render :show, status: :ok, location: @danhmucsach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @danhmucsach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danhmucsaches/1 or /danhmucsaches/1.json
  def destroy
    @danhmucsach.destroy
    respond_to do |format|
      format.html { redirect_to danhmucsaches_url, notice: "Danhmucsach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danhmucsach
      @danhmucsach = Danhmucsach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def danhmucsach_params
      params.require(:danhmucsach).permit(:ma_sach, :ten_sach, :mtg, :mtl, :maNXB, :nxb)
    end
end
