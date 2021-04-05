class TheloaisController < ApplicationController
  before_action :set_theloai, only: %i[ show edit update destroy ]

  # GET /theloais or /theloais.json
  def index
    @theloais = Theloai.all
  end

  # GET /theloais/1 or /theloais/1.json
  def show
  end

  # GET /theloais/new
  def new
    @theloai = Theloai.new
  end

  # GET /theloais/1/edit
  def edit
  end

  # POST /theloais or /theloais.json
  def create
    @theloai = Theloai.new(theloai_params)

    respond_to do |format|
      if @theloai.save
        format.html { redirect_to @theloai, notice: "Theloai was successfully created." }
        format.json { render :show, status: :created, location: @theloai }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @theloai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theloais/1 or /theloais/1.json
  def update
    respond_to do |format|
      if @theloai.update(theloai_params)
        format.html { redirect_to @theloai, notice: "Theloai was successfully updated." }
        format.json { render :show, status: :ok, location: @theloai }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @theloai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theloais/1 or /theloais/1.json
  def destroy
    @theloai.destroy
    respond_to do |format|
      format.html { redirect_to theloais_url, notice: "Theloai was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theloai
      @theloai = Theloai.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def theloai_params
      params.require(:theloai).permit(:ma_theloai, :ten_theloai)
    end
end
