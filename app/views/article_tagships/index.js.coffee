$('#edit-tags-modal .tags-place').html("<%= j(render 'article_tagships/ship_data', article: @article, tags_usent: @tags_usent) %>")
$('#edit-tags-modal .loading-icon').hide()