import React, {useContext, useRef} from 'react';
import WindowContext from "../context";

const ServerAnswer = () => {

    const {answer, photoURL} = useContext(WindowContext)
    const userPhoto = useRef();

    return (
        <div className={"serverAnswer__container"}>
            {/*{console.log(answer)}*/}
            <div className="image-container">
                <img ref={userPhoto} src={photoURL} alt="UserPhoto"/>
            </div>
            {console.log(userPhoto)}
            {/*<div className='b-box' style={{width:`${answer['width']}px`, height:`${answer['height']}px`, left:`${answer['left']}px`,top:`${answer['top']}px`}}>*/}
            {/*</div>*/}
            {/*<div className="answer">*/}
            {/*    <div className="answer__age">*/}
            {/*        <span>Age: </span>{Math.round(answer['age'])}*/}
            {/*    </div>*/}
            {/*    <div className="answer__gender">*/}
            {/*        <span>Gender: </span>{answer['gender']}*/}
            {/*    </div>*/}
            {/*</div>*/}
        </div>
    );
};

export default ServerAnswer;