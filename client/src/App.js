import classes from './App.module.css';
import React, {useState} from "react";
import axios from "axios";

function App() {
  const [isDrag, setDrag] = useState(false)

  function dragStartHandler(e) {
    e.preventDefault()
    setDrag(true)
  }

  function dragLeaveHandler(e) {
    e.preventDefault()
    setDrag(false)
  }

  async function onDropHandler(e) {
    e.preventDefault()
    let images = [...e.dataTransfer.files]
    const formData = new FormData()
    formData.append('img', images[0])
    setDrag(false)

    const response = await axios({
      method: 'post',
      url: 'http://127.0.0.1:8000/api/predictions',
      data: formData,
    });

    console.log(response)
  }

  return (
    <div className={classes.App}>
      {isDrag
        ? <div
            onDragStart={(e) => dragStartHandler(e)}
            onDragLeave={(e) => dragLeaveHandler(e)}
            onDragOver={(e) => dragStartHandler(e)}
            onDrop={e => onDropHandler(e)}
          >
            Отпустите изображение, чтобы загрузить его
      </div>
        : <div
            onDragStart={(e) => dragStartHandler(e)}
            onDragLeave={(e) => dragLeaveHandler(e)}
            onDragOver={(e) => dragStartHandler(e)}
          >Перетащите изображение, чтобы загрузить его</div>
      }
    </div>
  );
}

export default App;
