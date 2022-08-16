import React from 'react';
import Slider from "react-slick"
import axios from "axios";
import "slick-carousel/slick/slick-theme.css";
import "slick-carousel/slick/slick.css";
import "./ImageSlider.scss"
import {ArrowBackIos, ArrowForwardIos} from "@material-ui/icons";
import test1 from "../../assets/images/test1.jpg"
import test2 from "../../assets/images/test2.jpg"
import test3 from "../../assets/images/test3.jpg"
import test4 from "../../assets/images/test4.jpg"
import test5 from "../../assets/images/test5.jpg"
import test6 from "../../assets/images/test6.jpg"
import test7 from "../../assets/images/test7.jpg"

const testImages = [test1, test2, test3, test4, test5, test6, test7]

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
                        <img className={"card-img"} src={image} alt={`test ${index}`}/>
                        {/*onClick={(e) => sendImageHandler(e)}*/}
                    </div>
                ) )
                }
            </Slider>
        </div>
    );
};

export default ImageSlider;