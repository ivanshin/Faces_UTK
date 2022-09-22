import React from 'react';
import classes from "./index.module.scss";

const Greeting = () => {
    return (
        <div className={classes.greeting}>
            <div className={classes.text}>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. In laboriosam minima minus non optio quibusdam ratione! Adipisci animi assumenda, consequuntur cum eaque earum enim illo illum impedit magnam modi nam nihil non perspiciatis reiciendis! Aspernatur harum ipsa magnam qui rerum.
            </div>
        </div>
    );
};

export default Greeting;