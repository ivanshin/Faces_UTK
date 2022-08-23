import React from 'react';

const ServerAnswer = (props) => {
    {console.log(props.answer['b_box'])}
    return (
        <div className={"serverAnswer__container"}>
            <div className="image-container">
                <img src={props.photoURL} alt="UserPhoto"/>
            </div>
            <div className='b-box'>

            </div>
            <div className="answer">
                <div className="answer__age">
                    <span>Age: </span>{Math.round(props.answer['age'])}
                </div>
                <div className="answer__gender">
                    <span>Gender: </span>{props.answer['gender']}
                </div>
            </div>
        </div>
    );
};

export default ServerAnswer;