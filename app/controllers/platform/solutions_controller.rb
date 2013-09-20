class Platform::SolutionsController < ApplicationController
  # GET /platform/solutions
  def index
    @platform_solutions = Platform::Solution.all
  end

  # GET /platform/solutions/1
  def show
    @platform_solution = Platform::Solution.find(params[:id])
  end

  # GET /platform/solutions/new
  def new
    @platform_solution = Platform::Solution.new
  end

  # GET /platform/solutions/1/edit
  def edit
    @platform_solution = Platform::Solution.find(params[:id])
  end

  # POST /platform/solutions
  def create
    params[:platform_solution][:status] = 0
    @platform_solution = Platform::Solution.new(params[:platform_solution])
    if @platform_solution.save
      redirect_to platform_problems_path, notice: 'Enviada com sucesso'
    else
      redirect_to new_platform_solution_path, notice: 'Problema na criacao'
    end
  end

  # PUT /platform/solutions/1
  def update
    @platform_solution = Platform::Solution.find(params[:id])
    params[:platform_solution][:status] = 0
    if @platform_solution.update_attributes(params[:platform_solution])
      redirect_to @platform_solution, notice: 'Solution was successfully updated.'
    else
      redirect_to edit_platform_solution_path, notice: 'Problema na atuazacao'
    end
  end

  # DELETE /platform/solutions/1
  def destroy
    @platform_solution = Platform::Solution.find(params[:id])
    @platform_solution.destroy
    redirect_to platform_solutions_url
  end
end
