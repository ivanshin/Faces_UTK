import React, {useContext, useEffect, useRef} from 'react';
import AppContext from "../context";
import axios from "axios";

const UserPhoto = () => {

    const {answer, setAnswer, photoURL, photo} = useContext(AppContext)
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
        await setAnswer(JSON.parse(response.data));
    }

    useEffect( () => {
        requestServer();
    },[])

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
            </div>
        </div>
    );
};

export default UserPhoto;