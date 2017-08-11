module ApplicationHelper
  def tool_image_path(tool)
    if tool.photo.present?
      cl_image_path tool.photo.path, height: 200
    else
      image_path "outils.jpg"
    end
  end
end
