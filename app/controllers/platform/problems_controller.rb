class Platform::ProblemsController < ApplicationController
  # GET /platform/problems
  def index
    @platform_problems = Platform::Problem.all
  end

  # GET /platform/problems/1
  def show
    @platform_problem = Platform::Problem.where(ident: params[:ident]).first
    @last_solution = Platform::Solution.where(:ident => @platform_problem.ident)
    if !@last_solution.blank?
      @last_solution = @last_solution.order("version DESC").first
    else
      @last_solution = nil
    end
    # @platform_problem
  end

  # GET /platform/problems/new
  def new
    @platform_problem = Platform::Problem.new
  end

  # GET /platform/problems/1/edit
  def edit
    @platform_problem = Platform::Problem.find(params[:id])
  end

  # POST /platform/problems
  def create
    params[:platform_problem][:ident] = rand(32 ** 32).to_s(32)
    @platform_problem = Platform::Problem.new(params[:platform_problem])
    if @platform_problem.save
      redirect_to '/platform/problems/show/?ident=' + params[:platform_problem][:ident], notice: 'Criado com sucesso!'
    else
      redirect_to new_platform_problem_path, notice: 'Falha na criacao'
    end
  
  end

  # PUT /platform/problems/1
  def update
    @platform_problem = Platform::Problem.find(params[:id])
    if @platform_problem.update_attributes(params[:platform_problem])
      redirect_to @platform_problem, notice: 'Problem was successfully updated.'
    else
      redirect_to edit_platform_problems_path, notice: 'Problema na atuazacao'
    end
  end

  # DELETE /platform/problems/1
  def destroy
    @platform_problem = Platform::Problem.find(params[:id])
    @platform_problem.destroy
    redirect_to platform_problems_url
  end
end
