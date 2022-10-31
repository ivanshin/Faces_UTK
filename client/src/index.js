import React, {useState} from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import WindowContext from "./context";
import { store } from './redux/store'
import { Provider } from 'react-redux'

function Main () {
    const [photoURL, setPhotoURL] = useState(false);
    const [isPhoto, setIsPhoto] = useState(false);

    return (
        <Provider store={store}>
            <WindowContext.Provider value={{isPhoto, setIsPhoto, photoURL, setPhotoURL}}>
                <App />
            </WindowContext.Provider>
        </Provider>
        )

}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
    <Main />
);
