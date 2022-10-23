class Friends2sController < ApplicationController
  before_action :set_friends2, only: %i[ show edit update destroy ]

  # GET /friends2s or /friends2s.json
  def index
    @friends2s = Friends2.all
  end

  # GET /friends2s/1 or /friends2s/1.json
  def show
  end

  # GET /friends2s/new
  def new
    @friends2 = Friends2.new
  end

  # GET /friends2s/1/edit
  def edit
  end

  # POST /friends2s or /friends2s.json
  def create
    @friends2 = Friends2.new(friends2_params)

    respond_to do |format|
      if @friends2.save
        format.html { redirect_to friends2_url(@friends2), notice: "Friends2 was successfully created." }
        format.json { render :show, status: :created, location: @friends2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friends2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends2s/1 or /friends2s/1.json
  def update
    respond_to do |format|
      if @friends2.update(friends2_params)
        format.html { redirect_to friends2_url(@friends2), notice: "Friends2 was successfully updated." }
        format.json { render :show, status: :ok, location: @friends2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friends2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends2s/1 or /friends2s/1.json
  def destroy
    @friends2.destroy

    respond_to do |format|
      format.html { redirect_to friends2s_url, notice: "Friends2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friends2
      @friends2 = Friends2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friends2_params
      params.require(:friends2).permit(:first_name, :last_name, :email, :phone, :insta, :reg_num)
    end
end
