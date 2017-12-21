class Api::FoosController < API::BaseController
  before_action :set_foo, only: [:show, :edit, :update, :destroy]

  # GET /api/foos
  # GET /api/foos.json
  def index
    @foos = Foo.all
    render jsonapi: @foos
  end

  # GET /api/foos/1
  # GET /api/foos/1.json
  def show
    render jsonapi: @foo
  end

  # POST /api/foos
  # POST /api/foos.json
  def create
    @foo = Foo.new(foo_params)

    if @foo.save
      render jsonapi: @foo
    else
      render json: @foo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/foos/1
  # PATCH/PUT /api/foos/1.json
  def update
    if @api_foo.update(foo_params)
      render jsonapi: @foo
    else
    render json: @foo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/foos/1
  # DELETE /api/foos/1.json
  def destroy
    @foo.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo
      @foo = Foo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_params
      params.fetch(:api_foo, {})
    end
end
