import React from 'react';
import classes from "./index.module.scss";

const Greeting = () => {
    return (
        <div className={classes.greeting}>
            <div className={classes.text}>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, illum in incidunt minus odio tempore!
            </div>
        </div>
    );
};

export default Greeting;