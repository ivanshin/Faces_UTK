import React, {useContext, useEffect, useRef} from 'react';
import AppContext from "../../context";
import axios from "axios";
import Skeleton from "./Skeleton";
import classes from "./index.module.scss"
import classNames from "classnames"
import { useSelector, useDispatch } from 'react-redux'
import { setAnswer, setInvalidAnswer } from '../../redux/slices/statesSlice'
import * as imageConversion from "image-conversion";

const UserPhoto = () => {

    const dispatch = useDispatch()
    const answer = useSelector((state) => state.states.answer)
    const invalidAnswer = useSelector((state) => state.states.invalidAnswer)

    const { photoURL } = useContext(AppContext)
    const userPhoto = useRef();

    async function requestServer() {
        let imgObject = await imageConversion.urltoImage(photoURL);
        let imgCanvas = await imageConversion.imagetoCanvas(imgObject);
        let imgFile = await imageConversion.canvastoFile(imgCanvas);

        const formData = new FormData();
        formData.append('img', imgFile);
        formData.append('width',userPhoto.current.clientWidth);
        formData.append('height',userPhoto.current.clientHeight);
        const response = await axios({
            method: 'post',
            url: 'http://127.0.0.1:8000/api/predictions',
            data: formData,
        });
        console.log(response.data);
        if(response.data === 'NO FACE DETECTED') {
            console.log('error')
            dispatch(setInvalidAnswer(true));
        } else {
            dispatch(setAnswer(JSON.parse(response.data)));
        }
    }

    useEffect( () => {
        requestServer();
    },[])

    return (
        <div className={classes.userPhoto}>
            <div className={classes.container}>
                <div className={classNames(classes.imageContainer, !answer && !invalidAnswer && classes.unvisibleImage)}>
                    <img ref={userPhoto} src={photoURL} alt="UserPhoto"/>
                </div>
                {
                    answer
                        ? <div
                            className={classes.bBox}
                            style={{width:`${answer['width']}px`, height:`${answer['height']}px`, left:`${answer['left']}px`,top:`${answer['top']}px`}}>
                        </div>
                        : !invalidAnswer && <Skeleton />
                }
            </div>
        </div>
    );
};

export default UserPhoto;