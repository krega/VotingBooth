function generateChart(pltData, names)
{
    console.log("data:")
    console.log(pltData)
    chart = document.getElementById('myChart');
    var allZeros = true
    
    for(var i = 0; i < pltData.length; i++)
    {
        if(pltData[i] != 0)
        {
            allZeros = false;
        }
    }

    if(allZeros)
    {
        return ;
    }
    console.log(pltData)

    var data = [{
        values: pltData,
        labels: names,
        type: 'pie'
    }];

    var layout = {
        showlegend: true,
        height: 400,
        width: 700,
        paper_bgcolor: 'rgba(0,0,0,0)',
        plot_bgcolor: 'rgba(0,0,0,0)'
    };

    Plotly.newPlot(chart, data, layout);
}
