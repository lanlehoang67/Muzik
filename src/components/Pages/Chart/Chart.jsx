import React from 'react'
import ChartItem from './ChartItem/ChartItem'
function Chart(props) {
    const {chart} = props;
    return (
        <div className="chart">
        <ul className="chart-list">
          {
            chart.map((item, index) => {
              return <ChartItem key={`chart-${item.id}`} {...item} {...props}/>;
            })
          }
        </ul>
      </div>
    )
}

export default Chart
