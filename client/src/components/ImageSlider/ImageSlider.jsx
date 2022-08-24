import React, {useContext} from 'react';
import Slider from "react-slick"
import axios from "axios";
import "slick-carousel/slick/slick-theme.css";
import "slick-carousel/slick/slick.css";
import "./ImageSlider.scss"
import {ArrowBackIos, ArrowForwardIos} from "@material-ui/icons";
import testImages from "./SliderData";
import WindowContext from "../../context";


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

    const {setLoading, setIsAnswer, setAnswer,setPhotoURL} = useContext(WindowContext)


    async function sendImageHandler(index) {
        setLoading(true);

        const formData = new FormData()

        formData.append('img', index)

        const response = await axios({
            method: 'post',
            url: 'http://127.0.0.1:8000/api/predictions_slider',
            data: formData,
        });

        setPhotoURL(testImages[index])
        setAnswer(JSON.parse(response.data))
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
                        <img className={"card__img"} src={image} alt={`test ${index}`}/>
                        <button onClick={() => sendImageHandler(index)} className={"card__btn"}>use this photo</button>
                    </div>
                ) )
                }
            </Slider>
        </div>
    );
};

export default ImageSlider;