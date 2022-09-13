import React, {useContext, useEffect, useRef} from 'react';
import WindowContext from "../context";
import axios from "axios";
import ChangeableButton from "./UI/ChangeableButton";

const ServerAnswer = () => {

    const {answer, setAnswer, photoURL, photo, setIsAnswer, setPhotoURL} = useContext(WindowContext)
    const userPhoto = useRef();

    async function requestServer() {
        const formData = new FormData();
        formData.append('img', photo);
        formData.append('width',userPhoto.current.clientWidth);
        formData.append('height',userPhoto.current.clientHeight);
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

    const resetAnswer = () => {
        setIsAnswer(false);
        setPhotoURL(null);
    }

    return (
        <div className="serverAnswer">
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
            <ChangeableButton onClick = {resetAnswer} title={'Other photo'}/>
        </div>
    );
};

export default ServerAnswer;