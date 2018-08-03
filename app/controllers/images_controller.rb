class ImagesController < ApplicationController
#Mostrar todas las imagenes

before_action :set_image ,only: [:show,:edit,:update,:destroy]

def index
  @var_images = Image.where user_id: current_user.id
end


def new
  @var_image = Image.new
  end



  def create
    #  render plain: params[:image].inspect
    @var_image = current_user.images.new images_params
    #@var_image=Image.new images_params
      if
        @var_image.save
        return redirect_to home_index_path
      end
      render :new
  end


def show

end


def edit

end

def update

@var_image.update images_params
redirect_to @var_image
end

def destroy
  @var_image.destroy
  redirect_to images_path
end
private
  def images_params
    params.require(:image).permit :description, :picture
  end

def set_image
  @var_image= Image.find params[:id]
end
end
