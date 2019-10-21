import React from 'react'

function Track(props) {
    const {name} = props;
    console.log(props)
    return (
        <li>{name}</li>
    )
}

export default Track
