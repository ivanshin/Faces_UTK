import React from 'react';
import classes from './index.module.scss'
import AppContext from "../../context";
import ChangeableButton from "../UI/ChangeableButton";
import CircleLoader from "react-spinners/CircleLoader";

const ServerAnswer = () => {

    const {answer, setIsPhoto, setPhoto, setPhotoURL, setAnswer, setIsAnswer} = React.useContext(AppContext)

    const resetAnswer = () => {
        setIsPhoto(false);
        setPhoto(false);
        setPhotoURL(false);
        setAnswer(false);
        setIsAnswer(false);
    }

    return (
        <div className={classes.answer}>
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
                : <>
                        <CircleLoader className={classes.loader} color={'#FFF'} size={60} />
                        <span className={classes.loading}>Loading...</span>
                    </>
            }
        </div>
    );
};

export default ServerAnswer;