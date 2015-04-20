Blog.Skill = DS.Model.extend(

  name: DS.attr('string')
  value: DS.attr('number')
  start_date: DS.attr('date')

  years: (->
    start = moment(@get('start_date'))
    now = moment().add(3, 'month')
    now.diff(start, 'years')
  ).property()

  level: (->
    val = @get('value')
    switch
      when val < 20
        'familiar'
      when val <= 40
        'low'
      when val <= 60
        'advanced'
      when val <= 80
        'good'
      when val <= 100
        'expert'
  ).property()


)