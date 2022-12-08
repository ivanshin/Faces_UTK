import React from 'react';
import classNames from "classnames";
import { useSelector, useDispatch } from 'react-redux'
import { setAnswer, setInvalidAnswer } from '../../redux/slices/statesSlice'

import classes from './index.module.scss'
import AppContext from "../../context";
import ChangeableButton from "../UI/ChangeableButton";
import CircleLoader from "react-spinners/CircleLoader";

const ServerAnswer = () => {
    const answer = useSelector((state) => state.states.answer)
    const invalidAnswer = useSelector((state) => state.states.invalidAnswer)
    const dispatch = useDispatch()

    const {setIsPhoto, setPhotoURL} = React.useContext(AppContext)

    const resetAnswer = () => {
        dispatch(setInvalidAnswer(false));
        setIsPhoto(false);
        setPhotoURL(false);
        dispatch(setAnswer(false));
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