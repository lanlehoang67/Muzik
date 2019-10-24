import React from 'react'
import {Link} from 'react-router-dom'
import  './ChartItem.css'
import { Paper } from '@material-ui/core';
function ChartItem(props) {
    const {picture, title, id} = props;
    return (
        
        <li className="chart-item">
        <div className="chart-item-thumb">
          <img src={picture} />
        </div>
        <div className="chart-item-detail">
          <div className="chart-item-detail-left">
            <div className="chart-item-info">
              <div className="chart-item-title ellipsis" title={title}>
                <Link to={`/song/${title}/${id}`}>{title}</Link>
              </div>
            
            </div>
          </div>
          
        </div>
        </li>
    )
}

export default ChartItem
