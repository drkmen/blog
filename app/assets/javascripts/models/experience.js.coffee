Blog.Experience = DS.Model.extend(

  job_title: DS.attr('string')
  employer: DS.attr('string')
  description: DS.attr('string')
  from: DS.attr('date')
  to: DS.attr('date')
  study: DS.attr('boolean')

  years: ->
    @endYear() - @startYear()

  startYear: ->
    moment(@get('from')).format('YYYY')

  endYear: ->
    if !@get('to')
      moment().format('YYYY')
    else
      moment(@get('to')).format('YYYY')

  yearsInt: ->
    (@years() * 10)+"%"

  startYearInt: (->
    ((parseInt(@startYear()) / 100) + (parseInt(@years()) * 100))
  ).property()

  endYearInt: (->
    @endYear() / 10
  ).property()


)