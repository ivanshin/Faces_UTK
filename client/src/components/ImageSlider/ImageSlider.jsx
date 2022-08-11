import React from 'react';
import Slider from "react-slick"
import axios from "axios";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import ArrowRight from "../UI/svg/ArrowRight";
import {testImages} from "./SliderData";
import './ImageSlider.scss'
import {ArrowBackIos, ArrowForwardIos} from "@material-ui/icons";

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

    async function sendImageHandler(e) {
        const formData = new FormData()

        e.preventDefault()
        fetch(e.target)
            .then(res => res.blob())
            .then(blob => {
                const file = new File([blob], 'testFile.jpg', blob)
                console.log(file)
            })
            .then(axios({
                method: 'post',
                url: 'http://127.0.0.1:8000/api/predictions',
                data: formData,
            }))
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
                    {i}
                </div>
            )
        }
        // responsive: [
        //     {
        //         breakpoint: 1024,
        //         settings: {
        //             slidesToShow: 1,
        //             slidesToScroll: 1,
        //             infinite: true,
        //             dots: true
        //         }
        //     }
        // ]
    };

    return (
        <div className={"slider-container"}>
            <Slider {...settings}>
                {testImages.map((image, index) => (
                    <div key = {image} className={"card"}>
                        <img onClick={(e) => sendImageHandler(e)} className={"card-img"} src={image} alt={`test ${index}`}/>
                    </div>
                ) )
                }
            </Slider>
        </div>
    );
};

export default ImageSlider;