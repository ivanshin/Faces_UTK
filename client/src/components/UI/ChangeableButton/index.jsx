import React from 'react';

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