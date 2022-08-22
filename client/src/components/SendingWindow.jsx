import React, {useState} from 'react';
import axios from "axios";
import AddAPhotoIcon from '@material-ui/icons/AddAPhoto';
import {NoImage} from "./UI/Icons/NoImage";
import CircleLoader from "react-spinners/CircleLoader";
import ServerAnswer from "./ServerAnswer";
import ChangeableButton from "./UI/ChangeableButton";

const SendingWindow = () => {

    const [isDrag, setDrag] = useState(false)
    const [loading, setLoading] = useState(false)
    const [isAnswer, setIsAnswer] = useState(false)
    const [answer, setAnswer] = useState()
    const [photoURL, setPhotoURL] = useState()

    const fileReader = new FileReader()
    fileReader.onloadend = () => {
        setPhotoURL(fileReader.result);
    }

    function dragStartHandler(e) {
        e.preventDefault()
        setDrag(true)
    }

    function dragLeaveHandler(e) {
        e.preventDefault()
        setDrag(false)
    }

    async function onDropHandler(e) {
        setLoading(true);

        e.preventDefault();
        let images = [...e.dataTransfer.files][0];
        fileReader.readAsDataURL(images);
        const formData = new FormData();
        formData.append('img', images);
        setDrag(false);

        const response = await axios({
            method: 'post',
            url: 'http://127.0.0.1:8000/api/predictions',
            data: formData,
        });

        setAnswer(JSON.parse(response.data))
        setLoading(false);
        setIsAnswer(true);
    }

    const loadingByClick = async (e) => {
        setLoading(true);
        e.preventDefault();
        let images = e.target.files[0];
        fileReader.readAsDataURL(images);
        const formData = new FormData();
        formData.append('img', images);

        const response = await axios({
            method: 'post',
            url: 'http://127.0.0.1:8000/api/predictions',
            data: formData,
        });

        setAnswer(JSON.parse(response.data))
        setLoading(false);
        setIsAnswer(true);
    }

    const resetAnswer = () => {
        setIsAnswer(false);
        setPhotoURL(null);
    }

    return (
        <>
            {isAnswer
                ? <div className={'serverAnswer'}>
                    <ServerAnswer answer={answer} photoURL={photoURL}/>
                    <ChangeableButton onClick = {resetAnswer} title={'Other photo'}/>
                </div>
                : loading
                ? <div className="window">
                        <div className={'window-content'}>
                            <div className="window-content__container window-loader">
                                <span>Loading</span>
                                <CircleLoader className={'loader-animation'} color={'#73baba'} loading={loading} size={50} />
                            </div>
                        </div>
                    </div>
                : isDrag
                ? <div className="window">
                    <div className={'window-content'}
                         onDragStart={(e) => dragStartHandler(e)}
                         onDragLeave={(e) => dragLeaveHandler(e)}
                         onDragOver={(e) => dragStartHandler(e)}
                         onDrop={e => onDropHandler(e)}
                    >
                        <div className="window-content__container">
                            Release the photo to upload it
                            <div className={'window__icon'}>
                                <AddAPhotoIcon style={{fontSize:'50px'}} />
                            </div>
                        </div>
                    </div>
                </div>
                : <div className="window">
                    <div
                        className={'window-content'}
                        onDragStart={(e) => dragStartHandler(e)}
                        onDragLeave={(e) => dragLeaveHandler(e)}
                        onDragOver={(e) => dragStartHandler(e)}
                    >
                        <form
                            className="window-content__form"
                            onChange={loadingByClick}
                        >
                            <label htmlFor="input-file">
                                <div className={'window-content__container'}>
                                    Drag and drop the photo to&nbsp;upload or&nbsp;click on&nbsp;the window to&nbsp;select a&nbsp;photo
                                    <div className = {'window__icon'}>
                                        <NoImage />
                                    </div>
                                </div>
                            </label>
                            <input id={"input-file"} type="file" className="type"/>
                        </form>
                    </div>
                </div>
            }
        </>
    );
};

export default SendingWindow;