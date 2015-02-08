module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
    when "success"
      "alert-sucess"
    when "error"
      "alert-error"
    when "alert"
      "alert-warning"
    when "notice"
      "alert-info"
    else
      flash_type.to_s
    end
  end
end
