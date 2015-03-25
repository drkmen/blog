Blog.PostSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs:
    tags:  embedded: 'always'
    author: embedded: 'always'
    comments: embedded: 'always'

});