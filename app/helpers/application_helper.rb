module ApplicationHelper

  def show_team(id)
    Team.find(id).name
  end

end
