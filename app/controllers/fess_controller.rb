# -*- coding: utf-8 -*-S

class FessController < ApplicationController
  unloadable
  menu_item :standard
  before_filter :find_project, :authorize

  def index
  end

private

  def find_project
    begin
      @project = Project.find(params[:project_id])
    rescue ActiveRecord::RecordNotFound
      render_404
    end
  end

end
