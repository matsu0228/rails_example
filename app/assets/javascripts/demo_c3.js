function view_chart(dates, data){
var chart = c3.generate({
  bindto: '#chart',
  data: {
    x: 'x',
    xFormat: '%Y%m%d',
    columns: [
      dates,
      data
//     ['data2', 50, 20, 10, 40, 15, 25]
    ]
  },
  axis: {
    x : {
      type: 'timeseries'
    }
  }
});
}
