import React from 'react';
import "./index.scss"

const ChangeableButton = (props) => {

    return (
        <button
            onClick={props.onClick}
            className="custom-btn changeable"
        >
            <span>Click!</span>
            <span>{props.title}</span>
        </button>
    );
};

export default ChangeableButton;