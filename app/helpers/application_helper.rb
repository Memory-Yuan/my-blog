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
            @page_title = "Riddle | #{title}"
        end
    end
end
