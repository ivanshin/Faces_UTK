import React, {useContext} from "react";
import './scss/app.scss';
import SendingWindow from "./components/SendingWindow";
import UserPhoto from "./components/UserPhoto";
import ImageSlider from "./components/ImageSlider/ImageSlider";
import WindowContext from "./context";
import Normolize from 'react-normalize'

function App() {

    const {photoURL, isAnswer, answer} = useContext(WindowContext)

  return (
    <div className={"App"}>
        <Normolize />
        <div className="wrapper">
            <div className="container">
                <main>
                    <div className="window-image">
                        {isAnswer && photoURL
                            ? <UserPhoto />
                            : <SendingWindow />
                        }
                    </div>
                    <div className="slider-answer">
                        <ImageSlider />
                    </div>
                </main>
            </div>
        </div>
    </div>
  );
}

export default App;
