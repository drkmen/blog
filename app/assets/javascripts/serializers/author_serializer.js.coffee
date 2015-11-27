Blog.AuthorSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs:
    comments: embedded: 'always'
});