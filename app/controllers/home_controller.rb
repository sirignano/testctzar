class HomeController < ApplicationController
  def index
    if params[:ref].to_i < 0 || params[:ref].to_i > 2
      params[:ref] = 0
    end
    @templates = Template.where("user_id = #{current_user.id}")
    if @templates.empty?
      i = 0
      3.times do
        a = Template.new
        a.text1 = "lorem ibsum"
        a.text2 = "lorem ibsum"
        a.text3 = "lorem ibsum"
        a.pic1 = "/none"
        a.pic2 = "/none"
        a.pic3 = "/none"
        a.button1 = "default"
        a.button2 = "default"
        a.user_id = current_user.id
        a.ref = i
        a.save
        i = i + 1
      end
      @templates = Template.where("user_id = #{current_user.id}")
    end
  end

  def update
    if params[:id] == params[:id].to_i.to_s
      a = Template.where("id = #{params[:id]} and user_id = #{current_user.id}")
      if a.empty?
        redirect_to '/?ref=' + params[:refs], :flash => { :alert => "le template recherché n'existe pas" } and return
        #redirect
      end
      a.first.text1 = params[:text1]
      a.first.text2 = params[:text2]
      a.first.text3 = params[:text3]
      a.first.pic1 = params[:pic1]
      a.first.pic2 = params[:pic2]
      a.first.pic3 = params[:pic3]
      a.first.button1 = params[:button1]
      a.first.button2 = params[:button2]
      a.first.save
      redirect_to '/?ref=' + params[:refs], :flash => { :notice => "le template a été mis a jour" } and return
      #redirect
    end
    redirect_to '/?ref=' + params[:refs], :flash => { :alert => "le template recherché n'existe pas" } and return
    #redirect
  end

  def upload
    if  params[:file] == nil
      redirect_to '/?ref=' + params[:refs], :flash => { :alert => "invalid file" } and return
    end
    if params[:id] == params[:id].to_i.to_s
      a = Template.where("id = #{params[:id]} and user_id = #{current_user.id}")
      if a.empty?
        redirect_to '/?ref=' + params[:refs], :flash => { :alert => "le template recherché n'existe pas" } and return
        #redirect
      end
      i = Picture.new
      uploader = PicUploader.new

# =>  redirect existe deja
      uploader.store!(params[:file])
      i.url = uploader.url
      i.template_id = params[:id]
      i.save
      redirect_to '/?ref=' + params[:refs], :flash => { :notice => "image uploaded" } and return
      #UPLOAD
      #redirect
    end
    redirect_to '/?ref=' + params[:refs], :flash => { :alert => "le template recherché n'existe pas" } and return
    #redirect
  end
end
