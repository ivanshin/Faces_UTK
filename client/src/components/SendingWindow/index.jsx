import React, {useState, useContext} from 'react';
import AddAPhotoIcon from '@material-ui/icons/AddAPhoto';
import {NoImage} from "../UI/Icons/NoImage";
import AppContext from "../../context";

const SendingWindow = () => {

    const [isDrag, setDrag] = useState(false)
    const {setWindowLoading, setIsPhoto, setPhotoURL, setPhoto} = useContext(AppContext)

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
        setWindowLoading(true);
        e.preventDefault();
        let images = [...e.dataTransfer.files][0];
        setPhoto(images);
        fileReader.readAsDataURL(images);
        setDrag(false);
        setWindowLoading(false);
        setIsPhoto(true);
    }

    const loadingByClick = async (e) => {
        setWindowLoading(true);
        e.preventDefault();
        let images = e.target.files[0];
        setPhoto(images);
        fileReader.readAsDataURL(images);
        setWindowLoading(false);
        setIsPhoto(true);
    }

    return (
        <>
            {
                isDrag
                ? <div className="window window__drop">
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