class CoursesController < ApplicationController
  before_action :current_user_must_be_course_owner,
                only: %i[edit update destroy]

  before_action :set_course, only: %i[show edit update destroy]

  def index
    @q = Course.ransack(params[:q])
    @courses = @q.result(distinct: true).includes(:owner, :likes, :comments,
                                                  :professor, :fans).page(params[:page]).per(10)
  end

  def show
    @review = Review.new
    @bookmark = Bookmark.new
  end

  def new
    @course = Course.new
  end

  def edit; end

  def create
    @course = Course.new(course_params)

    if @course.save
      message = "Course was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @course, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: "Course was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    message = "Course was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to courses_url, notice: message
    end
  end

  private

  def current_user_must_be_course_owner
    set_course
    unless current_user == @course.owner
      redirect_back fallback_location: root_path,
                    alert: "You are not authorized for that."
    end
  end

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:description, :professor_id, :course_name,
                                   :quarter, :course_time)
  end
end
