import React from 'react';
import Slider from "react-slick"
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import test1 from "../assets/images/test1.jpg"
import test2 from "../assets/images/test2.jpg"
import test3 from "../assets/images/test3.jpg"
import test4 from "../assets/images/test4.jpg"
import test5 from "../assets/images/test5.jpg"
import test6 from "../assets/images/test6.jpg"
import test7 from "../assets/images/test7.jpg"
import axios from "axios";

const ImageSlider = () => {

    const sendImg = async (item) => {
        item.preventDefault()

        const formData = new FormData()
        formData.append('img', item.target)

        const response = await axios({
            method: 'post',
            url: 'http://127.0.0.1:8000/api/predictions',
            data: formData,
        });
        console.log(response)
    }

    const testImages = [test1, test2, test3, test4, test5, test6, test7]

    const settings = {
        dots:true,
        infinite: true,
        speed: 500,
        slidesToShow: 5,
        slidesToScroll: 1,
        initialSlide: 0,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                    initialSlide: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    };

    return (
        <div className={"slider-container"}>
            <Slider {...settings}>
                {testImages.map((image, index) => (
                    <div key = {image} className={"card"}>
                        <img onClick={sendImg} className={"card-img"} src={image} alt={`test ${index}`}/>
                    </div>
                ) )
                }
            </Slider>
        </div>
    );
};

export default ImageSlider;