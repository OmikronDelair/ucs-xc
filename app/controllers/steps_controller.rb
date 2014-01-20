class StepsController < ApplicationController
  expose(:step, attributes: :step_params)
  expose(:steps)
  expose(:songs)

  def index
  end

  def new
  end

  def create
    if step.save(step_params)
      flash[:notice] = 'Stepchart has been uploaded succesfully'
      redirect_to steps_path
    else
      flash[:error] = 'Stepchart was not uploaded'
      redirect_to new_step_path
    end
  end

  def edit
  end

  def update
    if step.save(step_params)
      flash[:notice] = 'Stepchart has been edited succesfully'
      redirect_to step_path(step.id)
    else
      flash[:error] = 'Stepchart was not updated'
      redirect_to edit_step_path(song_id)
    end
  end

  def destroy
    if step.destroy
      flash[:notice] = 'Stepchart has been deleted successfully'
      redirect_to steps_path
    else
      flash[:error] = 'Stepchart was not deleted'
      redirect_to steps_path
    end
  end

  def download
    file_to_download = "#{Rails.root}/public#{step.attachment_url}"
    send_file file_to_download
  end

  private

  def step_params
    params.require(:step).permit(:user_id, :song_id, :attachment, :video_url)
  end

end
