Blog.Experience = DS.Model.extend(

  job_title: DS.attr('string')
  employer: DS.attr('string')
  description: DS.attr('string')
  from: DS.attr('date')
  to: DS.attr('date')
  study: DS.attr('boolean')

  startYear: (->
    if !@get('study')
      moment(@get('from')).format('MMM YYYY')
    else
      moment(@get('from')).format('YYYY')
  ).property()

  endYear: (->
    if !@get('to')
      'Present'
    else
      moment(@get('to')).format('YYYY')
  ).property()

)