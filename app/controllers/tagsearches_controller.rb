# encoding: UTF-8
require 'open-uri'
require 'json'

class TagsearchesController < ApplicationController
  # GET /tagsearches
  # GET /tagsearches.json
  def index
    @tagsearches = Tagsearch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tagsearches }
    end
  end

  # GET /tagsearches/1
  # GET /tagsearches/1.json
  def show
    @tagsearch = Tagsearch.find(params[:id])
    @base_url = 'http://api.douban.com/v2/movie/search?tag='
    @result_tag = JSON.parse(open(URI.encode(@base_url + @tagsearch.tag)).read)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tagsearch }
    end
  end

  # GET /tagsearches/new
  # GET /tagsearches/new.json
  def new
    @tagsearch = Tagsearch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tagsearch }
    end
  end

  # GET /tagsearches/1/edit
  def edit
    @tagsearch = Tagsearch.find(params[:id])
  end

  # POST /tagsearches
  # POST /tagsearches.json
  def create
    @tagsearch = Tagsearch.new(params[:tagsearch])

    respond_to do |format|
      if @tagsearch.save
        format.html { redirect_to @tagsearch, notice: 'Tagsearch was successfully created.' }
        format.json { render json: @tagsearch, status: :created, location: @tagsearch }
      else
        format.html { render action: "new" }
        format.json { render json: @tagsearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tagsearches/1
  # PUT /tagsearches/1.json
  def update
    @tagsearch = Tagsearch.find(params[:id])

    respond_to do |format|
      if @tagsearch.update_attributes(params[:tagsearch])
        format.html { redirect_to @tagsearch, notice: 'Tagsearch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tagsearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tagsearches/1
  # DELETE /tagsearches/1.json
  def destroy
    @tagsearch = Tagsearch.find(params[:id])
    @tagsearch.destroy

    respond_to do |format|
      format.html { redirect_to tagsearches_url }
      format.json { head :no_content }
    end
  end
end
