import React, {useState} from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import WindowContext from "./context";

function Main () {
    const [isAnswer, setIsAnswer] = useState(false);
    const [answer, setAnswer] = useState(false);
    const [photoURL, setPhotoURL] = useState(false);
    const [photo, setPhoto] = useState(false);
    const [isPhoto, setIsPhoto] = useState(false);
    const [windowLoading, setWindowLoading] = useState(true);

    return (
            <WindowContext.Provider value={{windowLoading, setWindowLoading, isPhoto, setIsPhoto, isAnswer, setIsAnswer, answer, setAnswer, photoURL, setPhotoURL, photo, setPhoto}}>
                <App />
            </WindowContext.Provider>
        )

}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
    <Main />
);
