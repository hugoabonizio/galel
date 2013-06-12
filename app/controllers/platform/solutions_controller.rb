class Platform::SolutionsController < ApplicationController
  # GET /platform/solutions
  # GET /platform/solutions.json
  def index
    @platform_solutions = Platform::Solution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @platform_solutions }
    end
  end

  # GET /platform/solutions/1
  # GET /platform/solutions/1.json
  def show
    @platform_solution = Platform::Solution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @platform_solution }
    end
  end

  # GET /platform/solutions/new
  # GET /platform/solutions/new.json
  def new
    @platform_solution = Platform::Solution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @platform_solution }
    end
  end

  # GET /platform/solutions/1/edit
  def edit
    @platform_solution = Platform::Solution.find(params[:id])
  end

  # POST /platform/solutions
  # POST /platform/solutions.json
  def create
    @platform_solution = Platform::Solution.new(params[:platform_solution])

    respond_to do |format|
      if @platform_solution.save
        format.html { redirect_to @platform_solution, notice: 'Solution was successfully created.' }
        format.json { render json: @platform_solution, status: :created, location: @platform_solution }
      else
        format.html { render action: "new" }
        format.json { render json: @platform_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /platform/solutions/1
  # PUT /platform/solutions/1.json
  def update
    @platform_solution = Platform::Solution.find(params[:id])

    respond_to do |format|
      if @platform_solution.update_attributes(params[:platform_solution])
        format.html { redirect_to @platform_solution, notice: 'Solution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @platform_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform/solutions/1
  # DELETE /platform/solutions/1.json
  def destroy
    @platform_solution = Platform::Solution.find(params[:id])
    @platform_solution.destroy

    respond_to do |format|
      format.html { redirect_to platform_solutions_url }
      format.json { head :no_content }
    end
  end
end
