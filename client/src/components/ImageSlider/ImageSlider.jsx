import React, {useContext} from 'react';
import Slider from "react-slick"
import axios from "axios";
import "slick-carousel/slick/slick-theme.css";
import "slick-carousel/slick/slick.css";
import "./ImageSlider.scss"
import {ArrowBackIos, ArrowForwardIos} from "@material-ui/icons";
import testImages from "./SliderData";
import WindowContext from "../../context";
import * as imageConversion from 'image-conversion';

const PreviousBtn = (props) => {
    const {className, onClick} = props
    return (
        <div className={className} onClick={onClick}>
            <ArrowBackIos style={{fontSize:'40px'}} className={'slider-icon slider-left'} />
        </div>
    )
}

const NextBtn = (props) => {
    const {className, onClick} = props
    return (
        <div className={className} onClick={onClick}>
            <ArrowForwardIos style={{fontSize:'40px'}} className={'slider-icon slider-right'} />
        </div>
        )
}


const ImageSlider = () => {

    const {setLoading, setIsAnswer, setPhoto,setPhotoURL} = useContext(WindowContext)


    async function sendImageHandler(index) {
        setLoading(true);
        let imgObject = await imageConversion.urltoImage(testImages[index]);
        let imgCanvas = await imageConversion.imagetoCanvas(imgObject);
        let imgFile = await imageConversion.canvastoFile(imgCanvas);
        setPhoto(imgFile);
        setPhotoURL(testImages[index])
        setLoading(false);
        setIsAnswer(true);
    }

    const settings = {
        nextArrow: <NextBtn />,
        prevArrow:  <PreviousBtn />,
        infinite: true,
        speed: 500,
        dots:true,
        dotsClass:'slick-dots custom-indicator',
        slidesToShow: 1,
        slidesToScroll: 1,
        initialSlide: 0,
        customPaging: (i) => {
            return (
                <div>
                    <img
                        className={"slides-list"}
                        src={testImages[i]}
                        alt=""/>
                </div>
            )
        }
    };

    return (
        <div className={"slider-container"}>
            <Slider {...settings}>
                {testImages.map((image, index) => (
                    <div key = {image} className={"card"}>
                        <div className="card__container">
                            <div className="card__wrapper">
                                <img className={"card__img"} src={image} alt={`test ${index}`}/>
                                <button onClick={() => sendImageHandler(index)} className={"card__btn"}>Use this photo</button>
                            </div>
                        </div>
                    </div>
                ) )
                }
            </Slider>
        </div>
    );
};

export default ImageSlider;