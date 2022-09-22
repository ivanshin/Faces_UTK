import React from 'react';
import WorkItem from  './WorkItem'
import photo from '../../assets/images/photo.png'
import recognize from '../../assets/images/recognize.png'
import searchresult from '../../assets/images/searchresult.png'
import classes from './index.module.scss'

const HowItWorks = () => {
    const workImages = [photo, recognize, searchresult];
    const titles = ['1. Upload a photo', '2. The system detects the face', '3. Enjoy the result!'];
    const descriptions = ['There should be only one person in the photo.\n' +
    'Recommendations: The face should be clearly visible, it’s better to use frontal photos. Face recognition accuracy depends on the resolution and quality of a face image.', 'The system detects the face and creates a facial pattern. System facial point detection can locate the key components of faces, including eyebrows, eyes, nose, mouth and position.', 'The Neural Network compares the person with celebrity faces and suggests the most similar ones.'];

    return (
        <div className={classes.HowItWorks}>
            {workImages.map((value, index) => {
                return <WorkItem key={index} imgSrc={value} title={titles[index]} description={descriptions[index]} />
            })}
        </div>
    );
};

export default HowItWorks;