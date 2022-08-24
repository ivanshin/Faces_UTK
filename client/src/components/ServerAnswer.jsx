import React, {useContext} from 'react';
import WindowContext from "../context";

const ServerAnswer = () => {

    const {answer, photoURL} = useContext(WindowContext)

    return (
        <div className={"serverAnswer__container"}>
            {console.log(answer)}
            <div className="image-container">
                <img src={photoURL} alt="UserPhoto"/>
            </div>
            <div className='b-box' style={{width:`${answer['width']}px`, height:`${answer['height']}px`, left:`${answer['left']}px`,top:`${answer['top']}px`}}>
            </div>
            <div className="answer">
                <div className="answer__age">
                    <span>Age: </span>{Math.round(answer['age'])}
                </div>
                <div className="answer__gender">
                    <span>Gender: </span>{answer['gender']}
                </div>
            </div>
        </div>
    );
};

export default ServerAnswer;