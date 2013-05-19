# encoding: UTF-8
require 'open-uri'
require 'json'

class MoviesController < ApplicationController
  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movies }
    end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])
    @base_url = 'http://api.douban.com/v2/movie/search?tag='
    @tag_array = ["科幻","张国荣","英国","韩国","悬疑","动作","日本","惊悚","纪录片","魔幻","二战","爱情","青春","日本动画","男女","犯罪","法国","香港","恐怖","喜剧","经典","动画","剧情","警匪","传奇","战争","宫廷","亲情","魔幻","短片"]

    # movie_one
    if @movie.one.to_s == "阿凡达"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[0])).read)
    elsif @movie.one.to_s == "霸王别姬"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[1])).read)
    elsif @movie.one.to_s == "悲惨世界"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[2])).read)
    elsif @movie.one.to_s == "雏菊"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[3])).read)
    elsif @movie.one.to_s == "盗梦空间"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[4])).read)
    elsif @movie.one.to_s == "碟中谍4"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[5])).read)
    elsif @movie.one.to_s == "告白"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[6])).read)
    elsif @movie.one.to_s == "沉默的羔羊"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[7])).read)
    elsif @movie.one.to_s == "海豚湾"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[8])).read)
    elsif @movie.one.to_s == "哈利波特7"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[9])).read)
    elsif @movie.one.to_s == "黑皮书"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[10])).read)
    elsif @movie.one.to_s == "安娜·卡列尼娜"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[11])).read)
    elsif @movie.one.to_s == "那些年我们一起追的女孩"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[12])).read)
    elsif @movie.one.to_s == "千与千寻"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[13])).read)
    elsif @movie.one.to_s == "擒爱记"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[14])).read)
    elsif @movie.one.to_s == "七宗罪"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[15])).read)
    elsif @movie.one.to_s == "那个杀手不太冷"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[16])).read)
    elsif @movie.one.to_s == "神探"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[17])).read)
    elsif @movie.one.to_s == "死寂"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[18])).read)
    elsif @movie.one.to_s == "泰囧"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[19])).read)
    elsif @movie.one.to_s == "泰坦尼克"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[20])).read)
    elsif @movie.one.to_s == "机器人总动员"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[21])).read)
    elsif @movie.one.to_s == "危险关系"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[22])).read)
    elsif @movie.one.to_s == "无间道"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[23])).read)
    elsif @movie.one.to_s == "肖申克的救赎"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[24])).read)
    elsif @movie.one.to_s == "辛德勒的名单"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[25])).read)
    elsif @movie.one.to_s == "一天"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[26])).read)
    elsif @movie.one.to_s == "雨人"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[27])).read)
    elsif @movie.one.to_s == "指环王III"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[28])).read)
    elsif @movie.one.to_s == "纸人"
      @result_one = JSON.parse(open(URI.encode(@base_url + @tag_array[29])).read)
    end

    # movie_two
    if @movie.two.to_s == "阿凡达"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[0])).read)
    elsif @movie.two.to_s == "霸王别姬"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[1])).read)
    elsif @movie.two.to_s == "悲惨世界"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[2])).read)
    elsif @movie.two.to_s == "雏菊"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[3])).read)
    elsif @movie.two.to_s == "盗梦空间"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[4])).read)
    elsif @movie.two.to_s == "碟中谍4"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[5])).read)
    elsif @movie.two.to_s == "告白"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[6])).read)
    elsif @movie.two.to_s == "沉默的羔羊"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[7])).read)
    elsif @movie.two.to_s == "海豚湾"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[8])).read)
    elsif @movie.two.to_s == "哈利波特7"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[9])).read)
    elsif @movie.two.to_s == "黑皮书"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[10])).read)
    elsif @movie.two.to_s == "安娜·卡列尼娜"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[11])).read)
    elsif @movie.two.to_s == "那些年我们一起追的女孩"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[12])).read)
    elsif @movie.two.to_s == "千与千寻"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[13])).read)
    elsif @movie.two.to_s == "擒爱记"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[14])).read)
    elsif @movie.two.to_s == "七宗罪"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[15])).read)
    elsif @movie.two.to_s == "那个杀手不太冷"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[16])).read)
    elsif @movie.two.to_s == "神探"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[17])).read)
    elsif @movie.two.to_s == "死寂"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[18])).read)
    elsif @movie.two.to_s == "泰囧"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[19])).read)
    elsif @movie.two.to_s == "泰坦尼克"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[20])).read)
    elsif @movie.two.to_s == "机器人总动员"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[21])).read)
    elsif @movie.two.to_s == "危险关系"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[22])).read)
    elsif @movie.two.to_s == "无间道"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[23])).read)
    elsif @movie.two.to_s == "肖申克的救赎"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[24])).read)
    elsif @movie.two.to_s == "辛德勒的名单"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[25])).read)
    elsif @movie.two.to_s == "一天"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[26])).read)
    elsif @movie.two.to_s == "雨人"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[27])).read)
    elsif @movie.two.to_s == "指环王III"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[28])).read)
    elsif @movie.two.to_s == "纸人"
      @result_two = JSON.parse(open(URI.encode(@base_url + @tag_array[29])).read)
    end

    # movie_three
    if @movie.three.to_s == "阿凡达"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[0])).read)
    elsif @movie.three.to_s == "霸王别姬"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[1])).read)
    elsif @movie.three.to_s == "悲惨世界"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[2])).read)
    elsif @movie.three.to_s == "雏菊"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[3])).read)
    elsif @movie.three.to_s == "盗梦空间"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[4])).read)
    elsif @movie.three.to_s == "碟中谍4"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[5])).read)
    elsif @movie.three.to_s == "告白"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[6])).read)
    elsif @movie.three.to_s == "沉默的羔羊"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[7])).read)
    elsif @movie.three.to_s == "海豚湾"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[8])).read)
    elsif @movie.three.to_s == "哈利波特7"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[9])).read)
    elsif @movie.three.to_s == "黑皮书"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[10])).read)
    elsif @movie.three.to_s == "安娜·卡列尼娜"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[11])).read)
    elsif @movie.three.to_s == "那些年我们一起追的女孩"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[12])).read)
    elsif @movie.three.to_s == "千与千寻"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[13])).read)
    elsif @movie.three.to_s == "擒爱记"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[14])).read)
    elsif @movie.three.to_s == "七宗罪"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[15])).read)
    elsif @movie.three.to_s == "那个杀手不太冷"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[16])).read)
    elsif @movie.three.to_s == "神探"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[17])).read)
    elsif @movie.three.to_s == "死寂"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[18])).read)
    elsif @movie.three.to_s == "泰囧"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[19])).read)
    elsif @movie.three.to_s == "泰坦尼克"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[20])).read)
    elsif @movie.three.to_s == "机器人总动员"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[21])).read)
    elsif @movie.three.to_s == "危险关系"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[22])).read)
    elsif @movie.three.to_s == "无间道"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[23])).read)
    elsif @movie.three.to_s == "肖申克的救赎"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[24])).read)
    elsif @movie.three.to_s == "辛德勒的名单"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[25])).read)
    elsif @movie.three.to_s == "一天"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[26])).read)
    elsif @movie.three.to_s == "雨人"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[27])).read)
    elsif @movie.three.to_s == "指环王III"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[28])).read)
    elsif @movie.three.to_s == "纸人"
      @result_three = JSON.parse(open(URI.encode(@base_url + @tag_array[29])).read)
    end

    #movie_four
    if @movie.four.to_s == "阿凡达"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[0])).read)
    elsif @movie.four.to_s == "霸王别姬"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[1])).read)
    elsif @movie.four.to_s == "悲惨世界"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[2])).read)
    elsif @movie.four.to_s == "雏菊"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[3])).read)
    elsif @movie.four.to_s == "盗梦空间"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[4])).read)
    elsif @movie.four.to_s == "碟中谍4"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[5])).read)
    elsif @movie.four.to_s == "告白"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[6])).read)
    elsif @movie.four.to_s == "沉默的羔羊"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[7])).read)
    elsif @movie.four.to_s == "海豚湾"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[8])).read)
    elsif @movie.four.to_s == "哈利波特7"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[9])).read)
    elsif @movie.four.to_s == "黑皮书"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[10])).read)
    elsif @movie.four.to_s == "安娜·卡列尼娜"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[11])).read)
    elsif @movie.four.to_s == "那些年我们一起追的女孩"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[12])).read)
    elsif @movie.four.to_s == "千与千寻"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[13])).read)
    elsif @movie.four.to_s == "擒爱记"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[14])).read)
    elsif @movie.four.to_s == "七宗罪"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[15])).read)
    elsif @movie.four.to_s == "那个杀手不太冷"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[16])).read)
    elsif @movie.four.to_s == "神探"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[17])).read)
    elsif @movie.four.to_s == "死寂"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[18])).read)
    elsif @movie.four.to_s == "泰囧"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[19])).read)
    elsif @movie.four.to_s == "泰坦尼克"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[20])).read)
    elsif @movie.four.to_s == "机器人总动员"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[21])).read)
    elsif @movie.four.to_s == "危险关系"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[22])).read)
    elsif @movie.four.to_s == "无间道"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[23])).read)
    elsif @movie.four.to_s == "肖申克的救赎"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[24])).read)
    elsif @movie.four.to_s == "辛德勒的名单"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[25])).read)
    elsif @movie.four.to_s == "一天"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[26])).read)
    elsif @movie.four.to_s == "雨人"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[27])).read)
    elsif @movie.four.to_s == "指环王III"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[28])).read)
    elsif @movie.four.to_s == "纸人"
      @result_four = JSON.parse(open(URI.encode(@base_url + @tag_array[29])).read)
    end

    #movie_five
    if @movie.five.to_s == "阿凡达"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[0])).read)
    elsif @movie.five.to_s == "霸王别姬"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[1])).read)
    elsif @movie.five.to_s == "悲惨世界"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[2])).read)
    elsif @movie.five.to_s == "雏菊"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[3])).read)
    elsif @movie.five.to_s == "盗梦空间"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[4])).read)
    elsif @movie.five.to_s == "碟中谍4"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[5])).read)
    elsif @movie.five.to_s == "告白"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[6])).read)
    elsif @movie.five.to_s == "沉默的羔羊"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[7])).read)
    elsif @movie.five.to_s == "海豚湾"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[8])).read)
    elsif @movie.five.to_s == "哈利波特7"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[9])).read)
    elsif @movie.five.to_s == "黑皮书"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[10])).read)
    elsif @movie.five.to_s == "安娜·卡列尼娜"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[11])).read)
    elsif @movie.five.to_s == "那些年我们一起追的女孩"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[12])).read)
    elsif @movie.five.to_s == "千与千寻"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[13])).read)
    elsif @movie.five.to_s == "擒爱记"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[14])).read)
    elsif @movie.five.to_s == "七宗罪"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[15])).read)
    elsif @movie.five.to_s == "那个杀手不太冷"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[16])).read)
    elsif @movie.five.to_s == "神探"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[17])).read)
    elsif @movie.five.to_s == "死寂"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[18])).read)
    elsif @movie.five.to_s == "泰囧"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[19])).read)
    elsif @movie.five.to_s == "泰坦尼克"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[20])).read)
    elsif @movie.five.to_s == "机器人总动员"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[21])).read)
    elsif @movie.five.to_s == "危险关系"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[22])).read)
    elsif @movie.five.to_s == "无间道"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[23])).read)
    elsif @movie.five.to_s == "肖申克的救赎"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[24])).read)
    elsif @movie.five.to_s == "辛德勒的名单"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[25])).read)
    elsif @movie.five.to_s == "一天"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[26])).read)
    elsif @movie.five.to_s == "雨人"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[27])).read)
    elsif @movie.five.to_s == "指环王III"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[28])).read)
    elsif @movie.five.to_s == "纸人"
      @result_five = JSON.parse(open(URI.encode(@base_url + @tag_array[29])).read)
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/new
  # GET /movies/new.json
  def new
    @movie = Movie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/1/edit
  def edit
    @movie = Movie.find(params[:id])
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(params[:movie])

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render json: @movie, status: :created, location: @movie }
      else
        format.html { render action: "new" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movies/1
  # PUT /movies/1.json
  def update
    @movie = Movie.find(params[:id])

    respond_to do |format|
      if @movie.update_attributes(params[:movie])
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    respond_to do |format|
      format.html { redirect_to movies_url }
      format.json { head :no_content }
    end
  end
end
