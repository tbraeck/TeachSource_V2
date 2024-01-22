class CreateResourcesController < ApplicationController
  before_action :set_create_resource, only: %i[ show edit update destroy ]

  # GET /create_resources or /create_resources.json
  def index
    @create_resources = CreateResource.all
  end

  # GET /create_resources/1 or /create_resources/1.json
  def show
  end

  # GET /create_resources/new
  def new
    @create_resource = CreateResource.new
  end

  # GET /create_resources/1/edit
  def edit
  end

  # POST /create_resources or /create_resources.json
  def create
    @create_resource = CreateResource.new(create_resource_params)

    respond_to do |format|
      if @create_resource.save
        format.html { redirect_to create_resource_url(@create_resource), notice: "Create resource was successfully created." }
        format.json { render :show, status: :created, location: @create_resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_resources/1 or /create_resources/1.json
  def update
    respond_to do |format|
      if @create_resource.update(create_resource_params)
        format.html { redirect_to create_resource_url(@create_resource), notice: "Create resource was successfully updated." }
        format.json { render :show, status: :ok, location: @create_resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_resources/1 or /create_resources/1.json
  def destroy
    @create_resource.destroy!

    respond_to do |format|
      format.html { redirect_to create_resources_url, notice: "Create resource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_resource
      @create_resource = CreateResource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_resource_params
      params.fetch(:create_resource, {})
    end
end
