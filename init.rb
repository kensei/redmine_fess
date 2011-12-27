require 'redmine'

Redmine::Plugin.register :redmine_fess do
  name 'Redmine Fess plugin'
  author 'kensei'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://firespeed.org/diary.php?diary=kensei'

  project_module :fess do
    permission :show_fess, :fess => [:index]
  end

  menu :project_menu, :fess, { :controller => :fess, :action => :index }, :caption => :label_fess, :param => :project_id

end