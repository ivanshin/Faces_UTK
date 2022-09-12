import React, {useContext, useEffect, useRef} from 'react';
import WindowContext from "../context";
import axios from "axios";

const ServerAnswer = () => {

    const {answer, setAnswer, photoURL, photo} = useContext(WindowContext)
    const userPhoto = useRef();

    async function requestServer() {
        const formData = new FormData();
        formData.append('img', photo);
        formData.append('width',userPhoto.current.clientWidth);

        const response = await axios({
            method: 'post',
            url: 'http://127.0.0.1:8000/api/predictions',
            data: formData,
        });
        setAnswer(JSON.parse(response.data))
        console.log(userPhoto.current.clientWidth, userPhoto.current.clientHeight);
    }

    useEffect( () => {
        requestServer();
    },[])

    return (
        <div className={"serverAnswer__container"}>
            <div className="image-container">
                <img ref={userPhoto} src={photoURL} alt="UserPhoto"/>
            </div>
            {
                answer
                ? <div
                        className='b-box'
                        style={{width:`${answer['width']}px`, height:`${answer['height']}px`, left:`${answer['left']}px`,top:`${answer['top']}px`}}>
                </div>
                : null
            }

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