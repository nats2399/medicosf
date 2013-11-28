class MedicosController < ApplicationController
  before_action :set_medico, only: [:show, :edit, :update, :destroy]

  
  def index
    @medicos = Medico.all
    @especialidads = Especialidad.all
  end
  
  def show
    @especialidad = Especialidad.find(params[:id]);
    @medicos = Medicos.select("id, nombres, apellidos, celular, email, curriculum, reconocimiento, imagen").where(:especialidad_id => params[:id]);
  end

  def new
    @medico = Medico.new
  end

  def edit
  end

  def create
    @medico = Medico.new(medico_params)

    if @medico.save()
      redirect_to medicos_path, :notice => "El medico ha sido insertada";
    else
      render "new";
    end

  end

  def update
    respond_to do |format|
      if @medico.update(medico_params)
        format.html { redirect_to @medico, notice: 'Medico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @medico.destroy
    respond_to do |format|
      format.html { redirect_to medicos_url }
      format.json { head :no_content }
    end
  end

  private
    def set_medico
      @medico = Medico.find(params[:id])
    end

    def medico_params
      params.require(:medico).permit(:nombres, :apellidos, :celular, :email, :curriculum, :reconocimiento, :imagen, :especialidad_id)
    end



















end
