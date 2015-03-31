Blog.AuthorSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs:
    posts: embedded: 'always'
    comments: embedded: 'always'
});