$(function(){
  $.ajax({
    type: "GET",
    url: '/graphs/all',
    dataType: "json"
  }).done(function(data){
    var w = 500;
    var h = 100;
    var svg = d3.select('#placeholder').append('svg')
                .attr("width", w)
                .attr("height", h);
    svg.selectAll('rect')
        .data(data)
        .enter()
        .append('rect')
        .attr('x', function(d,i){
          return i * (w/data.length);
        })
        .attr('y', function(d){
          return h - d;
        })
        .attr('height', function(d){
          return d * 400;
        })
        .attr('width', 20);
  }).fail(function(){
    console.log("not this time");
  })
});
