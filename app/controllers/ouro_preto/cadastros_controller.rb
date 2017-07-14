class OuroPreto::CadastrosController < ApplicationController
  layout "superar"
  respond_to :html, :xls
  before_action :set_ouro_preto_cadastro, only: [:show, :edit, :update, :destroy]

  # GET /ouro_preto/cadastros
  # GET /ouro_preto/cadastros.json
  def index
    @ouro_preto_cadastros = OuroPreto::Cadastro.all
    @ouro_preto_cadastros = OuroPreto::Cadastro.order('created_at DESC')
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  # GET /ouro_preto/cadastros/1
  # GET /ouro_preto/cadastros/1.json
  def show
  end

  # GET /ouro_preto/cadastros/new
  def new
    @ouro_preto_cadastro = OuroPreto::Cadastro.new
  end

  # GET /ouro_preto/cadastros/1/edit
  def edit
  end

  # POST /ouro_preto/cadastros
  # POST /ouro_preto/cadastros.json
  def create
    @ouro_preto_cadastro = OuroPreto::Cadastro.new(ouro_preto_cadastro_params)

    respond_to do |format|
      if @ouro_preto_cadastro.save
        SuperarMailer.notificacao(@ouro_preto_cadastro).deliver!
        SuperarMailer.notificacao1(@ouro_preto_cadastro).deliver!
        format.html { redirect_to @ouro_preto_cadastro, notice: 'Cadastro was successfully created.' }
        format.json { render :show, status: :created, location: @ouro_preto_cadastro }
      else
        format.html { render :new }
        format.json { render json: @ouro_preto_cadastro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ouro_preto/cadastros/1
  # PATCH/PUT /ouro_preto/cadastros/1.json
  def update
    respond_to do |format|
      if @ouro_preto_cadastro.update(ouro_preto_cadastro_params)
        format.html { redirect_to @ouro_preto_cadastro, notice: 'Cadastro was successfully updated.' }
        format.json { render :show, status: :ok, location: @ouro_preto_cadastro }
      else
        format.html { render :edit }
        format.json { render json: @ouro_preto_cadastro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ouro_preto/cadastros/1
  # DELETE /ouro_preto/cadastros/1.json
  def destroy
    @ouro_preto_cadastro.destroy
    respond_to do |format|
      format.html { redirect_to ouro_preto_cadastros_url, notice: 'Cadastro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ouro_preto_cadastro
      @ouro_preto_cadastro = OuroPreto::Cadastro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ouro_preto_cadastro_params
      params.require(:ouro_preto_cadastro).permit(:nome, :telefone, :email, :aluno, :curso)
    end
end
