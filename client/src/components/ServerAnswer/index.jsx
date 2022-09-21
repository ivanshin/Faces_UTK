import React from 'react';
import classes from './index.module.scss'
import AppContext from "../../context";
import ChangeableButton from "../UI/ChangeableButton";
import CircleLoader from "react-spinners/CircleLoader";
import classNames from "classnames";

const ServerAnswer = () => {

    const {answer, setIsPhoto, setPhoto, setPhotoURL, setAnswer, setIsAnswer, invalidAnswer, setInvalidAnswer} = React.useContext(AppContext)

    const resetAnswer = () => {
        setInvalidAnswer(false);
        setIsPhoto(false);
        setPhoto(false);
        setPhotoURL(false);
        setAnswer(false);
        setIsAnswer(false);
    }

    return (
        <div className={classNames(classes.answer, invalidAnswer && classes.invalid)}>
            {
                answer
                ?  <>
                        <div className={classes.age}>
                            <span>Age: </span>{Math.round(answer['age'])}
                        </div>
                        <div className={classes.gender}>
                            <span>Gender: </span>{answer['gender']}
                        </div>
                        <ChangeableButton onClick = {resetAnswer} title={'Other photo'}/>
                    </>
                : !invalidAnswer
                    ? <>
                        <CircleLoader className={classes.loader} color={'#FFF'} size={60} />
                        <span className={classes.loading}>Loading...</span>
                    </>
                    : <>
                        <div className={classes.noDetected}>
                            NO FACE DETECTED
                        </div>
                        <div className={classes.tryAgain}>
                            Try again ?
                        </div>
                        <ChangeableButton onClick = {resetAnswer} title={'Other photo'}/>
                    </>
            }
        </div>
    );
};

export default ServerAnswer;