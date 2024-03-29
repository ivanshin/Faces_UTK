import React, {useState} from 'react';
import { useDispatch } from 'react-redux'
import AddAPhotoIcon from '@material-ui/icons/AddAPhoto';
import {NoImage} from "../UI/Icons/NoImage";
import classes from "./index.module.scss"
import classNames from "classnames";
import { setPhotoURL, setIsPhoto } from "../../redux/slices/statesSlice";

const SendingWindow = () => {

    const dispatch = useDispatch()

    const [isDrag, setDrag] = useState(false)

    const fileReader = new FileReader()
    fileReader.onloadend = () => {
        dispatch(setPhotoURL(fileReader.result));
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
        e.preventDefault();
        let images = [...e.dataTransfer.files][0];
        fileReader.readAsDataURL(images);
        setDrag(false);
        dispatch(setIsPhoto(true));
    }

    const loadingByClick = async (e) => {
        e.preventDefault();
        let images = e.target.files[0];
        fileReader.readAsDataURL(images);
        dispatch(setIsPhoto(true));
    }

    return (
        <>
            {
                isDrag
                ? <div className={classNames(classes.window, classes.drop)}>
                    <div className={classes.container}
                         onDragStart={(e) => dragStartHandler(e)}
                         onDragLeave={(e) => dragLeaveHandler(e)}
                         onDragOver={(e) => dragStartHandler(e)}
                         onDrop={e => onDropHandler(e)}
                    >
                        <div className={classes.content}>
                            Release the photo to upload it
                            <div className={classes.icon}>
                                <AddAPhotoIcon style={{fontSize:'50px'}} />
                            </div>
                        </div>
                    </div>
                </div>
                : <div className={classes.window}>
                    <div
                        className={classes.container}
                        onDragStart={(e) => dragStartHandler(e)}
                        onDragLeave={(e) => dragLeaveHandler(e)}
                        onDragOver={(e) => dragStartHandler(e)}
                    >
                        <form
                            className={classes.form}
                            onChange={loadingByClick}
                        >
                            <label htmlFor="input-file">
                                <div className={classes.content}>
                                    Drag and drop the photo to&nbsp;upload or&nbsp;click on&nbsp;the window to&nbsp;select a&nbsp;photo
                                    <div className = {classes.icon}>
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