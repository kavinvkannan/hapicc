
$(function () {

    $.getJSON('https://www.highcharts.com/samples/data/jsonp.php?filename=aapl-c.json&callback=?', function (data) {
        // Create the chart
        $('#container-bp').highcharts('StockChart', {

            chart: {
                height: 300
            },

            rangeSelector : {
                allButtonsEnabled: true,
                buttons: [{
                    type: 'month',
                    count: 3,
                    text: 'Day',
                    dataGrouping: {
                        forced: true,
                        units: [['day', [1]]]
                    }
                }, {
                    type: 'year',
                    count: 1,
                    text: 'Week',
                    dataGrouping: {
                        forced: true,
                        units: [['week', [1]]]
                    }
                }, {
                    type: 'all',
                    text: 'Month',
                    dataGrouping: {
                        forced: true,
                        units: [['month', [1]]]
                    }
                }],
                buttonTheme: {
                    width: 60
                },
                selected: 2
            },

            title : {
                text : 'FitBit Steps'
            },

            subtitle: {
                text: 'Custom data grouping tied to range selector'
            },

            _navigator: {
                enabled: false
            },

            series : [{
                name : 'avg',
                data : data,
                marker: {
                    enabled: null, // auto
                    radius: 3,
                    lineWidth: 1,
                    lineColor: '#FFFFFF'
                },
                tooltip: {
                    valueDecimals: 2
                }
            }]
        });

        console.log(data);
        console.log(data.avg);
        console.log(data.date);
        console.log('data.dateahahhahahaaaaaaaaaaaaaaaaaaaaaaa');
        // $('#container').append($('#container').highcharts().getSVG())
    });

});

// $(document).ready(function() {
//   var data;
//  $.ajax({
//     url: 'fitbitdata.json',
//     type: 'GET',
//     async: true,
//     dataType: "jsonp",
//     success: function (data) {


//         dataParse(data);
//     }
//   });
//  });
// function dataParse(data) {
//   var steps = data.avg;
//   var dateString = data.date;
//   var stepsArray = [];
//   var dateArray = [];
//   // var boArray = [];
//   // var hrArray = [];
//   for (var i = 0; i < 20; i += 1) {
//     sysArray.push(parseInt(bpRecord[i].sys));
//     diaArray.push(parseInt(bpRecord[i].dia));
//     dateArray.push(bpRecord[i].date);
//   }

//   for (var i = 0; i < boRecord.length; i += 1) {
//     boArray.push(parseInt(boRecord[i].oxy));
//   }

//   for (var i = 0; i < hrRecord.length; i += 1) {
//     hrArray.push(parseInt(hrRecord[i].heart_rate));
//   }

//   console.log(sysArray);
//   console.log(diaArray);
//   console.log(dateArray);
//   console.log(boArray);
//   // var dia = data.bp_data_list[0].dia;
//   chartBuilder(sysArray, diaArray, dateArray, boArray, hrArray);
// }