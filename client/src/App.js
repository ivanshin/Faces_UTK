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
    
    // POST request DO NOT TOUCH
    const response = await axios({
      method: 'post',
      url: 'http://127.0.0.1:8000/api/predictions',
      data: formData,
  });

    // response debug check
    console.log(response)
  }

  /* const form = new FormData();
form.append(item.name, fs.createReadStream(pathToFile));

const response = await axios({
    method: 'post',
    url: 'http://www.yourserver.com/upload',
    data: form,
    headers: {
        'Content-Type': `multipart/form-data; boundary=${form._boundary}`,
    },
});
} */


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
