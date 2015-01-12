module ApplicationHelper
    def is_active(path)
        if path == request.original_fullpath
            "class=active"
        end
    end

    def set_title(title = "")
        if title.empty?
            @page_title = "Memory's Blog"
        else
            @page_title = "#{title} | Memory's Blog"
        end
    end

    def gravatar_for(email = "example@example.com", size = "")
        gravatar_id = Digest::MD5::hexdigest(email)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, size: size, class: "gravatar")
    end

end
