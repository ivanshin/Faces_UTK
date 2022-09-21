import React from 'react';
import classes from './index.module.scss'
import classNames from "classnames";

const ChangeableButton = (props) => {

    return (
        <button
            onClick={props.onClick}
            className={classNames(classes.customBtn, classes.changeable)}
        >
            <span>Click!</span>
            <span>{props.title}</span>
        </button>
    );
};

export default ChangeableButton;