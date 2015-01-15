article_id = $('#edit-tags-btn').data("article-id")
$.ajax(url: "/articles/#{article_id}/article_tagships")