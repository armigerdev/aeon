class LeadDropsController < ApplicationController
  before_action :set_lead_drop, only: [:show, :edit, :update, :destroy]

  # GET /lead_drops
  # GET /lead_drops.json
  def index
    selectedzip = '48187'
    @lead_drops = LeadDrop.where(zip_postal_code: selectedzip )

  end

  def import
    LeadDrop.import(params[:file])
    redirect_to lead_drops_url, notice: "Lead Data Imported!"
  end
  # GET /lead_drops/1
  # GET /lead_drops/1.json
  def show
  end

  # GET /lead_drops/new
  def new
    @lead_drop = LeadDrop.new
  end

  # GET /lead_drops/1/edit
  def edit
  end

  # POST /lead_drops
  # POST /lead_drops.json
  def create
    @lead_drop = LeadDrop.new(lead_drop_params)

    respond_to do |format|
      if @lead_drop.save
        format.html { redirect_to @lead_drop, notice: 'Lead drop was successfully created.' }
        format.json { render :show, status: :created, location: @lead_drop }
      else
        format.html { render :new }
        format.json { render json: @lead_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lead_drops/1
  # PATCH/PUT /lead_drops/1.json
  def update
    respond_to do |format|
      if @lead_drop.update(lead_drop_params)
        format.html { redirect_to @lead_drop, notice: 'Lead drop was successfully updated.' }
        format.json { render :show, status: :ok, location: @lead_drop }
      else
        format.html { render :edit }
        format.json { render json: @lead_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_drops/1
  # DELETE /lead_drops/1.json
  def destroy
    @lead_drop.destroy
    respond_to do |format|
      format.html { redirect_to lead_drops_url, notice: 'Lead drop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead_drop
      @lead_drop = LeadDrop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lead_drop_params
      params.require(:lead_drop).permit(:da, :create_date, :existing_ipdsl, :max_speed, :contact_name, :street_line_1, :unit_number, :living_unit_id, :lead_record_type, :dsl_service_type, :wireless_customer, :existing_hsia, :existing_voip, :disposition, :wire_center, :house_nbr, :street_name, :street_direction, :suffix_type_code, :city, :state/province, :zip/postal_code)
    end
end
