import React, {useState} from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import WindowContext from "./context";

function Main () {
    const [loading, setLoading] = useState(false)
    const [isAnswer, setIsAnswer] = useState(false)
    const [answer, setAnswer] = useState()
    const [photoURL, setPhotoURL] = useState()

    return (
        <React.StrictMode>
            <WindowContext.Provider value={{loading, setLoading,isAnswer, setIsAnswer, answer, setAnswer, photoURL, setPhotoURL}}>
                <App />
            </WindowContext.Provider>
        </React.StrictMode>
        )

}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
    <Main />
);
