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
        .attr('x', 0)
        .attr('y', 0)
        .attr('width', 20)
        .attr('height', 100)
        .attr('x', function(d,i){
          return i * (w/data.length);
        })
  }).fail(function(){
    console.log("not this time");
  })
});
