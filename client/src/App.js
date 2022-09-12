import React, {useContext} from "react";
import './scss/app.scss';
import SendingWindow from "./components/SendingWindow";
import ServerAnswer from "./components/ServerAnswer";
import ImageSlider from "./components/ImageSlider/ImageSlider";
import WindowContext from "./context";


function App() {

    const {photoURL, isAnswer, answer} = useContext(WindowContext)

  return (
    <div className={"App"}>
        <div className="wrapper">
            <div className="container">
                <main>
                    <div className="window-image">
                        {isAnswer && photoURL
                            ? <ServerAnswer />
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
