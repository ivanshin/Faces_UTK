import React from "react";
import './App.css'
import './scss/app.scss'
import SendingWindow from "./components/SendingWindow";
import ImageSlider from "./components/ImageSlider/ImageSlider";

function App() {
  return (
    <div className={"App"}>
        <SendingWindow />
        <ImageSlider />
    </div>
  );
}

export default App;
