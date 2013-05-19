# encoding: UTF-8
require 'open-uri'
require 'json'

class NamesearchesController < ApplicationController
  # GET /namesearches
  # GET /namesearches.json
  def index
    @namesearches = Namesearch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @namesearches }
    end
  end

  # GET /namesearches/1
  # GET /namesearches/1.json
  def show
    @namesearch = Namesearch.find(params[:id])
    @search_url = 'http://api.douban.com/v2/movie/search?q='

    # 获得电影名检索结果
    @result_name = JSON.parse(open(URI.encode(@search_url + @namesearch.name)).read)

    # 获得检索结果的第一个的ID
    @movie_id = @result_name['subjects'][0]['id']

    # 获得特定电影的条目信息
    @subject_url = 'http://api.douban.com/v2/movie/subject/'
    @result_subject = JSON.parse(open(URI.encode(@subject_url + @movie_id)).read)

    # 获得电影标签
    @genres = @result_subject["genres"][0]
    @base_url = 'http://api.douban.com/v2/movie/search?tag='

    # 根据标签进行查询
    @result_tag = JSON.parse(open(URI.encode(@base_url + @genres)).read)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @namesearch }
    end
  end

  # GET /namesearches/new
  # GET /namesearches/new.json
  def new
    @namesearch = Namesearch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @namesearch }
    end
  end

  # GET /namesearches/1/edit
  def edit
    @namesearch = Namesearch.find(params[:id])
  end

  # POST /namesearches
  # POST /namesearches.json
  def create
    @namesearch = Namesearch.new(params[:namesearch])

    respond_to do |format|
      if @namesearch.save
        format.html { redirect_to @namesearch, notice: 'Namesearch was successfully created.' }
        format.json { render json: @namesearch, status: :created, location: @namesearch }
      else
        format.html { render action: "new" }
        format.json { render json: @namesearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /namesearches/1
  # PUT /namesearches/1.json
  def update
    @namesearch = Namesearch.find(params[:id])

    respond_to do |format|
      if @namesearch.update_attributes(params[:namesearch])
        format.html { redirect_to @namesearch, notice: 'Namesearch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @namesearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /namesearches/1
  # DELETE /namesearches/1.json
  def destroy
    @namesearch = Namesearch.find(params[:id])
    @namesearch.destroy

    respond_to do |format|
      format.html { redirect_to namesearches_url }
      format.json { head :no_content }
    end
  end
end
