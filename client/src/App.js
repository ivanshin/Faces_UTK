import React from "react";
import './scss/app.scss'
import SendingWindow from "./components/SendingWindow";
import ImageSlider from "./components/ImageSlider/ImageSlider";

function App() {
  return (
    <div className={"App"}>
        <div className="wrapper">
            <div className="container">
                <SendingWindow />
                <ImageSlider />
            </div>
        </div>
    </div>
  );
}

export default App;
