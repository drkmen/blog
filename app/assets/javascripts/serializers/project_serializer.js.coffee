Blog.ProjectSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs:
    tags:  embedded: 'always'

});