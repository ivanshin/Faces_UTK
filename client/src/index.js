import React, {useState} from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import WindowContext from "./context";

function Main () {
    const [loading, setLoading] = useState(false);
    const [isAnswer, setIsAnswer] = useState(false);
    const [answer, setAnswer] = useState(false);
    const [photoURL, setPhotoURL] = useState(false);
    const [photo, setPhoto] = useState(false);

    return (
            <WindowContext.Provider value={{loading, setLoading,isAnswer, setIsAnswer, answer, setAnswer, photoURL, setPhotoURL, photo, setPhoto}}>
                <App />
            </WindowContext.Provider>
        )

}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
    <Main />
);
