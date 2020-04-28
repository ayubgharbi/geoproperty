module ApplicationHelper

    def profile_picture account, width = 100
        thumb = account.image.present? ? account.image.thumb.url : "placeholder.png"
        image_tag thumb, width: width, class: "profile-pic img-circle"
    end

    def flash_notifications
        flash_messages = []

        flash.each do |type, message|
          type = 'success' if type == 'notice'
          type = 'error'   if type == 'alert' || type == 'danger'
          text = "<script>toastr.#{type}('#{message}');</script>"
          flash_messages << text.html_safe if message
        end
        flash_messages.join("\n").html_safe
      end
end
