import React, {useContext} from "react";
import './scss/app.scss';
import AppContext from "./context";
import Normolize from 'react-normalize'
import {useSelector} from "react-redux";

import ServerAnswer from "./components/ServerAnswer";
import SendingWindow from "./components/SendingWindow";
import UserPhoto from "./components/UserPhoto";
import ImageSlider from "./components/ImageSlider/ImageSlider";
import Greeting from "./components/Greeting";
import HowItWorks from "./components/HowItWorks"

function App() {

    const photoURL = useSelector((state) => state.states.photoURL)
    const {isPhoto} = useContext(AppContext)

  return (
    <div className={"App"}>
        <Normolize />
        <div className="greeting">
            <Greeting />
        </div>
        <div className="wrapper">
            <main>
                <div className="container">
                    <div className="window-image">
                        {isPhoto && photoURL
                            ? <UserPhoto />
                            : <SendingWindow />
                        }
                    </div>
                    <div className="slider-answer">
                        {
                            isPhoto
                            ? <ServerAnswer />
                            : <ImageSlider />
                        }
                    </div>
                    <div className="works">
                        <HowItWorks />
                    </div>
                </div>
            </main>
        </div>
    </div>
  );
}

export default App;
