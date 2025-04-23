<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
		}
		#app {
			position: relative;
			z-index: 1;
		}
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
	
		.recommend {
		  padding: 10px 0;
		  display: flex;
		  justify-content: center;
		  background-repeat: no-repeat;
		  background-position: center center;
		  background-size: cover;
		}
	
		.recommend .box {
		    width: 1014px;
		}
	
		.recommend .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.recommend .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.recommend .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv1 .box .list .list-item {
			flex: 0 0 20%;
			padding: 0 5px;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 5px;
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.recommend .box .list img {
			width: 100%;
			height: 100px;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.recommend .box .list .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			text-align: center;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.recommend .box .list .list-item5 {
			flex: 0 0 20%;
		}
		
		/* 商品推荐-样式4-开始 */
		.recommend .list-4{
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: center;
		}
		.recommend .list-4 .list-4-body {
		    display: flex;
		    flex-direction: column;
		}
		
		.recommend .list-4 .list-4-item {
		    position: relative;
		    z-index: 1;
		}
		.recommend .list-4 .list-4-item.item-1 {
		    width: 400px;
		    height: 400px;
		    margin-right: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-2 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-3 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item.item-4 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-5 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item img {
		      width: 100%;
		      height: 100%;
		      object-fit: cover;
		      display: block;
		    }
		
		.recommend .list-4 .list-4-item .list-4-item-center {
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
			height: auto;
			display: flex;
			flex-wrap: wrap;
			background-color: rgba(0,0,0,.3);
		}
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-title {
			width: 50%;
			text-align: left;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-price {
			width: 50%;
			text-align: right;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		/* 商品推荐-样式4-结束 */
		/* 商品推荐-样式5-开始 */
		.recommend .recommend-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		
		.recommend .lists-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		/* 商品推荐-样式5-结束 */
	
		.news {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
			width: 100%;
		}
	
		.news .box {
		    width: 1014px;
		}
	
		.news .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.news .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.news .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv2 .box .list .list-item {
			flex: 0 0 ${var2}%;
			padding: 0 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 10px;
			box-sizing: border-box;
			display: flex;
			cursor: pointer;
		}
	
		.news .box .list .list-item .list-item-body img {
			width: 120px;
			height: 100%;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.news .box .list .list-item .list-item-body .item-info {
			flex: 1;
			display: flex;
			justify-content: space-between;
			flex-direction: column;
			padding-left: 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body .item-info .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			box-sizing: border-box;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item .list-item-body .item-info .time {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item1 {
			flex: 0 0 100%;
		}
	
		.news .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.lists {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
		}
	
		.lists .box {
		    width: 1014px;
		    overflow: hidden;
		}
	
		.lists .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.lists .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.lists .box .swiper-slide {
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.lists .box .swiper-slide .img-box {
			width: 100%;
			overflow: hidden;
		}
	
		.lists .box .swiper-slide .img-box img {
			width: 100%;
			height: 100%;
			object-fit: cover;
	    max-width: 100%;
		}
	.line1 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	.line2 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.line3 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
	}
	  	.index-pv3 .box .list .list-item {
	  		flex: 0 0 ${var3}%;
	  		padding: 0 10px;
	  		box-sizing: border-box;
	  	}
	
		.index-pv1 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.1) rotate(0) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.1) rotate(0) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.1) rotate(0) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		
		.index-pv1 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
	  
		.swiper-new-list-6 .swiper-wrapper {
			-webkit-transition-timing-function: linear;
			-moz-transition-timing-function: linear;
			-ms-transition-timing-function: linear;
			-o-transition-timing-function: linear;
			transition-timing-function: linear;
		}
		
		.idea {
		  display: flex;
		  flex-wrap: wrap;
		}
		.idea div {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  background-repeat: no-repeat;
		  background-size: 100% 100%;
		}
		.recommendIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 90px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		
		.newsIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 110px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		
		.listsIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
	</style>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" style="overflow: hidden;" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"20px","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item>
				<div v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="baseurl+item.value" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->
			<div :style='{"display": "flex","justify-content": "center","padding":"20px"}'>
				<select v-if="queryList.length>1" @change="queryChange($event)" name="queryName" id="queryName">
					<option v-for="(item,index) in queryList" v-bind:key="index" :value="index">{{item.queryName}}</option>
				</select>
				<div v-if="queryIndex==0" class="item-list">
					<input type="text" :style='{"boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(164, 236, 172, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"8px","textAlign":"center","borderWidth":"1px","width":"140px","fontSize":"14px","borderStyle":"solid","height":"44px"}'
					 name="ershouxinxiwupinmingcheng" id="ershouxinxiwupinmingcheng" placeholder="物品名称" autocomplete="off" class="layui-input">
				</div>
				<button v-if="queryIndex==0" :style='{"padding":"0 15px","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0 0 0 10px","borderColor":"#409EFF","backgroundColor":"rgba(164, 236, 172, 1)","color":"#fff","borderRadius":"44px","borderWidth":"0","width":"auto","fontSize":"14px","borderStyle":"solid","height":"40px"}'
				 id="btn-search" @click="jump('../ershouxinxi/list.jsp')" type="button" class="layui-btn layui-btn-normal">
					<i v-if="true" class="layui-icon layui-icon-search"></i>搜索
				</button>
			</div>



            <!-- 推荐 -->
				<!-- 样式一 -->
				<div class="recommend index-pv1" :style='{"padding":"10px 0 10px 0","boxShadow":"-14px -14px 0px 14px #A4ECAC","margin":"50px","borderColor":"rgba(10, 88, 162, 1)","borderRadius":"0","borderWidth":"4px","background":"transparent url(http://codegen.caihongy.cn/20220304/b814ed2d1f844c76a4ba390cedf5e359.png) no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:100%'>
					<div v-if="true && 1 == 1" class="idea recommendIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/67edc72ff3514dd89533f5dbb6b0402a.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"-75px 0 40px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0","alignItems":"center","borderWidth":"0","fontSize":"16px","borderStyle":"solid"}'>
				      <span>Recommend</span><span>二手信息推荐</span>
				    </div>
					<div v-if="true && 1 == 2" class="idea recommendIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/67edc72ff3514dd89533f5dbb6b0402a.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="list">
				      <div v-for="(item,index) in ershouxinxiRecommend" :key="index" @click="jump('../ershouxinxi/detail.jsp?id='+item.id)" class="list-item" :class="5=='3'?'list-item3':5=='5'?'list-item5':''">
				        <div class="list-item-body animation-box" :style='{"padding":"10px 10px 0","boxShadow":"0px 3px 6px rgba(0, 0, 0, 0.16)","margin":"0 0 10px 0","borderColor":"rgba(112, 112, 112, 1)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","borderStyle":"solid"}'>
							<img :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","width":"170px","borderStyle":"solid","height":"240px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
							<div class="line1" v-if='true' :style='{"isshow":true,"padding":"16px 0","margin":"5px 0 0 0","backgroundColor":"rgba(164, 236, 172, 1)","color":"rgba(0, 0, 0, 1)","borderRadius":"90px 90px 0 0","textAlign":"center","fontSize":"14px"}' class="name">{{item.wupinmingcheng}}</div>
				        </div>
				      </div>
				    </div>
				    <div class="clear"></div>
				    <div style="text-align: center;">
			    <button @click="jump('../ershouxinxi/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 50px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"4px auto 0","borderColor":"rgba(0, 0, 0, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"90px 90px 0 0","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"50px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
				    </div>
					<div v-if="true && 1 == 3" class="idea recommendIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/67edc72ff3514dd89533f5dbb6b0402a.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 推荐 -->

            

			<!-- 新闻资讯 -->
				<div class="news index-pv2" style="display: flex;justify-content: center;width:100%" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/4c9f83fdb78d4190935648ac01421e38.png) no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:80%'>
					<div v-if="true && 1 == 1" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9fb2b5c124c24fe287e74bc8f6b82874.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"-110px 600px 50px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0","alignItems":"center","borderWidth":"0","fontSize":"20px","borderStyle":"solid"}'>
				      <span>HOME NEWS</span><span>二手物品资讯</span>
				    </div>
					<div v-if="true && 1 == 2" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9fb2b5c124c24fe287e74bc8f6b82874.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
					<div v-if="newsList.length" class="new-list-9" style="display: flex;flex-wrap: wrap;align-items: center;">
					  <div v-for="(item,index) in newsList" v-if="index<6" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"padding":"32px 24px","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"5px 2%","borderColor":"rgba(10, 88, 162, 1)","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"20px","borderWidth":"4px","width":"46%","borderStyle":"solid","height":"auto"}' class="new9-list-item" style="box-sizing: border-box;cursor: pointer;display: flex;width: 50%;flex-direction: column;">
					    <div class="new9-list-body" style="display: flex;justify-content: space-between;align-items: center;">
					      <div :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":" 0","borderColor":"#ccc","backgroundColor":"rgba(255,0,0,0)","color":"rgba(0, 0, 0, 1)","borderRadius":"4px","borderWidth":"0","width":"auto","lineHeight":"28px","fontSize":"14px","borderStyle":"solid"}' style="box-sizing: border-box;flex: 1;" class="new9-list-item-title line1">{{ item.title }}</div>
					      <div :style='{"padding":"0 6px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(110, 22, 64, 0)","color":"rgba(117, 117, 117, 1)","borderRadius":"4px","borderWidth":"0","width":"auto","lineHeight":"21px","fontSize":"12px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
					    </div>
					    <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"5px 0 0 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(117, 117, 117, 1)","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"21px","fontSize":"14px","borderStyle":"solid"}' style="box-sizing: border-box;" class="new9-list-item-descript line2">{{ item.introduction }}</div>
					    <div style="display: flex">
					      <div :style='{"padding":"2px 10px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"15px 0 0 0","borderColor":"#ccc","backgroundColor":"rgba(193, 207, 207, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","borderWidth":"0","width":"auto","lineHeight":"18px","fontSize":"12px","text":"新闻动态","borderStyle":"solid"}' class="new9-list-item-identification">新闻动态</div>
					    </div>
					  </div>
					</div>
					
				    <div class="clear"></div>
				    <div style="text-align: center;">
					<button @click="jump('../news/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 50px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"4px auto 0","borderColor":"rgba(0, 0, 0, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"90px 90px 0 0","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"50px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
				    </div>
					<div v-if="true && 1 == 3" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9fb2b5c124c24fe287e74bc8f6b82874.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 新闻资讯 -->

			

			<!-- 图文列表 -->
				<div class="recommend index-pv3" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/21d850276b174bb596cf0b2ba04e5150.png) no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:80%'>
					<div v-if="true && 1 == 1" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9ab0c7b765e741339f35727bebd58094.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"isshow":true,"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"-110px 0 90px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0","alignItems":"center","borderWidth":"0","fontSize":"18px","borderStyle":"solid"}'>
				      <span>DATA SHOW</span><span>二手信息展示</span>
				    </div>
					<div v-if="true && 1 == 2" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9ab0c7b765e741339f35727bebd58094.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
					<div class="list-4">
					    <div v-if="ershouxinxiList.length>0" class="list-4-item animation-box item-1" @click="jump('../ershouxinxi/detail.jsp?id='+ershouxinxiList[0].id)" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 20px 0 0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"590px"}'>
									<img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="ershouxinxiList[0].tupian?baseurl+ershouxinxiList[0].tupian.split(',')[0]:''" alt="" />
					    			<div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
										<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{ershouxinxiList[0].wupinmingcheng}}</div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="ershouxinxiList.length>1" @click="jump('../ershouxinxi/detail.jsp?id='+ershouxinxiList[1].id)" class="list-4-item animation-box item-2" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"45px 20px 20px 0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"240px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="ershouxinxiList[1].tupian?baseurl+ershouxinxiList[1].tupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{ershouxinxiList[1].wupinmingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="ershouxinxiList.length>2" @click="jump('../ershouxinxi/detail.jsp?id='+ershouxinxiList[2].id)" class="list-4-item animation-box item-3" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 20px 0 0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"240px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="ershouxinxiList[2].tupian?baseurl+ershouxinxiList[2].tupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{ershouxinxiList[2].wupinmingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="ershouxinxiList.length>3" @click="jump('../ershouxinxi/detail.jsp?id='+ershouxinxiList[3].id)" class="list-4-item animation-box item-4" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"105px 0 20px 0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"180px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="ershouxinxiList[3].tupian?baseurl+ershouxinxiList[3].tupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
								<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{ershouxinxiList[3].wupinmingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="ershouxinxiList.length>4" @click="jump('../ershouxinxi/detail.jsp?id='+ershouxinxiList[4].id)" class="list-4-item animation-box item-5" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"180px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="ershouxinxiList[4].tupian?baseurl+ershouxinxiList[4].tupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{ershouxinxiList[4].wupinmingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					</div>
					<div class="clear"></div>
					<div style="text-align: center;">
					<button @click="jump('../ershouxinxi/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 50px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"4px auto 0","borderColor":"rgba(0, 0, 0, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"90px 90px 0 0","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"50px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
					</div>
					<div v-if="true && 1 == 3" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9ab0c7b765e741339f35727bebd58094.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 图文列表 -->
				<div class="recommend index-pv3" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/21d850276b174bb596cf0b2ba04e5150.png) no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:80%'>
					<div v-if="true && 1 == 1" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9ab0c7b765e741339f35727bebd58094.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"isshow":true,"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"-110px 0 90px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0","alignItems":"center","borderWidth":"0","fontSize":"18px","borderStyle":"solid"}'>
				      <span>DATA SHOW</span><span>低价急售展示</span>
				    </div>
					<div v-if="true && 1 == 2" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9ab0c7b765e741339f35727bebd58094.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
					<div class="list-4">
					    <div v-if="dijiajishouList.length>0" class="list-4-item animation-box item-1" @click="jump('../dijiajishou/detail.jsp?id='+dijiajishouList[0].id)" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 20px 0 0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"590px"}'>
									<img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="dijiajishouList[0].tupian?baseurl+dijiajishouList[0].tupian.split(',')[0]:''" alt="" />
					    			<div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
										<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{dijiajishouList[0].dijiamingcheng}}</div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="dijiajishouList.length>1" @click="jump('../dijiajishou/detail.jsp?id='+dijiajishouList[1].id)" class="list-4-item animation-box item-2" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"45px 20px 20px 0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"240px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="dijiajishouList[1].tupian?baseurl+dijiajishouList[1].tupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{dijiajishouList[1].dijiamingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="dijiajishouList.length>2" @click="jump('../dijiajishou/detail.jsp?id='+dijiajishouList[2].id)" class="list-4-item animation-box item-3" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 20px 0 0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"240px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="dijiajishouList[2].tupian?baseurl+dijiajishouList[2].tupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{dijiajishouList[2].dijiamingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="dijiajishouList.length>3" @click="jump('../dijiajishou/detail.jsp?id='+dijiajishouList[3].id)" class="list-4-item animation-box item-4" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"105px 0 20px 0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"180px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="dijiajishouList[3].tupian?baseurl+dijiajishouList[3].tupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
								<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{dijiajishouList[3].dijiamingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="dijiajishouList.length>4" @click="jump('../dijiajishou/detail.jsp?id='+dijiajishouList[4].id)" class="list-4-item animation-box item-5" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","width":"320px","borderStyle":"solid","height":"180px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="dijiajishouList[4].tupian?baseurl+dijiajishouList[4].tupian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,.3)","borderRadius":"0 0 10px 10px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{dijiajishouList[4].dijiamingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					</div>
					<div class="clear"></div>
					<div style="text-align: center;">
					<button @click="jump('../dijiajishou/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 50px","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"4px auto 0","borderColor":"rgba(0, 0, 0, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"90px 90px 0 0","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"50px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
					</div>
					<div v-if="true && 1 == 3" class="idea listsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220304/9ab0c7b765e741339f35727bebd58094.png) no-repeat top","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 图文列表 -->


		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
				queryList:[
					{
						queryName:"物品名称",
					},
				],
				queryIndex: 0,


                    // 推荐数据
					ershouxinxiRecommend: [],



                    ershouxinxiList: [],
                    dijiajishouList: [],


                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
					if (this.queryIndex == 0) {
						localStorage.setItem('indexQueryCondition', document.getElementById("ershouxinxiwupinmingcheng").value);
					}
						jump(url)
					},
					queryChange(event) {
						this.queryIndex = event.target.value;
						if (this.queryIndex == 0) {
							this.ershouxinxiwupinmingcheng = this.queryList[event.target.value].queryName;
						}
					}
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#swiper',
								width: '100%',
								height: '250px',
								arrow: 'hover',
								anim: 'default',
								autoplay: 'true',
								interval: '3000',
								indicator: 'none'
							});
						})
					}
				});
                

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
						console.log('rightNewsList',rightNewsList,vue.rightNewsList)
					}
					
					let flag = 9;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let sixSwiper = {
							loop: true,
							speed: 2500,
							slidesPerView: 3,
							spaceBetween: Number(10),
							centeredSlides: true,
							watchSlidesProgress: true,
							autoplay: {
							  delay: 0,
							  stopOnLastSlide: false,
							  disableOnInteraction: false
							}
						}
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', sixSwiper)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "ershouxinxi/autoSort";
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 5 * 2 
				}, function(res) {
					vue.ershouxinxiRecommend = res.data.list
					let flag = 1;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
								new Swiper ('#recommendershouxinxi', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperershouxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});

				

                http.request(`ershouxinxi/list`, 'get', {
					page: 1,
				}, function(res) {
					vue.ershouxinxiList = res.data.list
					let flag = 4;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#listsershouxinxi', options)
							new Swiper ('#listsdijiajishou', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperershouxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});
                http.request(`dijiajishou/list`, 'get', {
					page: 1,
				}, function(res) {
					vue.dijiajishouList = res.data.list
					let flag = 4;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#listsershouxinxi', options)
							new Swiper ('#listsdijiajishou', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperdijiajishou', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
