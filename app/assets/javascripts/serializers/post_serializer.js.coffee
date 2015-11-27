Blog.PostSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs:
    tags:  embedded: 'always'
    comments: embedded: 'always'

});