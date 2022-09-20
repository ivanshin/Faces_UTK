import React, {useContext} from "react";
import './scss/app.scss';
import SendingWindow from "./components/SendingWindow";
import UserPhoto from "./components/UserPhoto";
import ImageSlider from "./components/ImageSlider/ImageSlider";
import AppContext from "./context";
import Normolize from 'react-normalize'
import ServerAnswer from "./components/ServerAnswer";

function App() {

    const {photoURL, isPhoto} = useContext(AppContext)

  return (
    <div className={"App"}>
        <Normolize />
        <div className="wrapper">
            <div className="container">
                <main>
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
                </main>
            </div>
        </div>
    </div>
  );
}

export default App;
