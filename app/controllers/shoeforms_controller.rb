class ShoeformsController < ApplicationController
  before_action :set_shoeform, only: [:show, :edit, :update, :destroy]

  # GET /shoeforms
  # GET /shoeforms.json
  def index
    @shoeforms = Shoeform.all
  end

  # GET /shoeforms/1
  # GET /shoeforms/1.json
  def show
  end

  # GET /shoeforms/new
  def new
    @shoeform = Shoeform.new
  end

  # GET /shoeforms/1/edit
  def edit
  end

  # POST /shoeforms
  # POST /shoeforms.json
  def create
    @shoeform = Shoeform.new(shoeform_params)

    respond_to do |format|
      if @shoeform.save
        format.html { redirect_to @shoeform, notice: 'Shoeform was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shoeform }
      else
        format.html { render action: 'new' }
        format.json { render json: @shoeform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoeforms/1
  # PATCH/PUT /shoeforms/1.json
  def update
    respond_to do |format|
      if @shoeform.update(shoeform_params)
        format.html { redirect_to @shoeform, notice: 'Shoeform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shoeform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoeforms/1
  # DELETE /shoeforms/1.json
  def destroy
    @shoeform.destroy
    respond_to do |format|
      format.html { redirect_to shoeforms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoeform
      @shoeform = Shoeform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shoeform_params
      params.require(:shoeform).permit(:contact_email, :phone_number, :size, :price, :img_url, :description, :condition)
    end
end
