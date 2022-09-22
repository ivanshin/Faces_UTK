import React from 'react';
import classes from './index.module.scss'

const WorkItem = (props) => {
    return (
        <div className={classes.workItem}>
            <h4>{props.title}</h4>
            <img src={props.imgSrc} alt="WorksImage"/>
            <p>{props.description}</p>
        </div>
    );
};

export default WorkItem;