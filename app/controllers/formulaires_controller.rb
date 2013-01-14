class FormulairesController < ApplicationController
  # GET /formulaires
  # GET /formulaires.xml
  def index
    @formulaires = Formulaire.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @formulaires }
    end
  end

  # GET /formulaires/1
  # GET /formulaires/1.xml
  def show
    @formulaire = Formulaire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @formulaire }
    end
  end

  # GET /formulaires/new
  # GET /formulaires/new.xml
  def new
    @formulaire = Formulaire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @formulaire }
    end
  end

  # GET /formulaires/1/edit
  def edit
    @formulaire = Formulaire.find(params[:id])
  end

  # POST /formulaires
  # POST /formulaires.xml
  def create
    @formulaire = Formulaire.new(params[:formulaire])

    respond_to do |format|
      if @formulaire.save
        format.html { redirect_to(@formulaire, :notice => 'Formulaire was successfully created.') }
        format.xml  { render :xml => @formulaire, :status => :created, :location => @formulaire }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @formulaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /formulaires/1
  # PUT /formulaires/1.xml
  def update
    @formulaire = Formulaire.find(params[:id])

    respond_to do |format|
      if @formulaire.update_attributes(params[:formulaire])
        format.html { redirect_to(@formulaire, :notice => 'Formulaire was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @formulaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /formulaires/1
  # DELETE /formulaires/1.xml
  def destroy
    @formulaire = Formulaire.find(params[:id])
    @formulaire.destroy

    respond_to do |format|
      format.html { redirect_to(formulaires_url) }
      format.xml  { head :ok }
    end
  end
end
