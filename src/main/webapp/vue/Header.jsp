<%-- 
    Document   : Header
    Created on : 6 févr. 2021, 15:45:26
    Author     : leonl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${param.title}</title> 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">

    </head>
    
    <style>
       .row>div {
            height: auto;
            /*border: 1px #000 solid;*/
        }
        
       
        .logo{
            height: 100px;
            width: 190px;
            text-align: left;
            float: left;
        }
        #photoLogo{
            height: 90px;
            width: 170px;
            float: left;
        }
        
        .menu{
            margin-top: 10px;
            float: left;
        }
        
        .part1{
            height: 300px;
            width: 100%;            
            /*border: 1px #000 solid;*/
            background-image: url('Img\\accueil.jfif');
            background-repeat: no-repeat;
            background-size:100% 100%;
            float: left;
        }
        .jumbotron h1{
            /*text-align: center;*/
            font-size: 40px;
            font-style: italic;
            color: #fff;
            margin-top: 10px;
            
        }
        
        .txtHome{
            font-size: 10px;
        }
        .jumbotron{
           background-color:transparent; 
           margin-top: 0px;
           float: left;
        }
        .jumbotron p {
            color: #ffdab9;
        }
        
        .part3{
            /*border: 1px #000 solid;*/
            height: auto;
            width: 100%;
            background-color: #f5f5f5;
            float: left;
        }
        
        .title{
            margin-top: 30px;
            text-align: center;

        }
        
        .produit{
            background-color: #fff;
            box-shadow:0px 15px 10px -15px #000;
            width: 150px;
            height: 370px;
            /*height: 300px;*/
            
            margin: 1% 0% 1% 2%;
            float: left;
            
        }
        img{
            height: 100px;
            width: 80px;
            margin-left: 40px;
            object-fit: cover;
            
        }
        
        .namePro{
            font-size: 14px;
            font-weight:bold;
            text-align: left;
            font-family:  inherit;
            color: black;
            margin: 8%;
            height: 10%;
        }
        
        .prix{
            font-size: 15px;
            color: black;
            font-weight: bold;
            margin-left: 10%;
            margin-top: 10%;
            float: left;
            
        }
        
        .prinxInfo {
           margin: 0 0 0px;
           margin-top: 1px;
        }
        
        .poids{
            font-size: 10px;
            color: #06357a;
            margin: 0% 0% 4% 5%;
        }
        
        
        .prixPoid{
            font-size: 10px;
            color: #06357a;
            margin: 0% 0% 4% 5%;
        }
        
        .articleSpan{
            float: left;
            width: 100%;
        }
        
        .niveau1{
            background-color: #F4A460;
            
            width: 100%;
        }
        
        .niveau1 span{
            font-size: 15px;
            text-align: center;
            font-style: italic;
            color: black;
            font-weight: bold;
            margin: 13% 9% 9% 9%;

        }
        
        /*
        .niveau2{
            float: left;
        }*/
        
        .niveau3{
            width: 100%;
            height: 120px;
            float: left;
            position: relative;
            z-index: 1;
        }
        
        .imagePro{
            background-size: cover;
            background-position: center;
            
            
        }
        
        .infos{
            float: left;
            width: 100%;
        }
        
        
        .infoPromo{
            background-color: #ffecb5;
        }
        
        .infoPromo p {
            font-size: 13px;
            font-family: cursive;
            color: black;
            font-weight: bold;
            text-align: center;
        }
        
        .marque{
           font-size: 10px; 
           margin: 7px;
           font-weight:bold
        }
        
        .infoPrix{
            display: inline;
            width: auto;
            margin-top: 9%;
        }
        
        .iconPanier{
            margin-right: 10%;
            margin-top: 7%;
            margin-bottom: 5%;
            float: right;
        }
        
        .lstPro{
            background-color: #f5f5f5;
           /** float: left;**/
        }
        
        /*.photoPro{
            background-size: contain;
        }*/
        
        .maintip{
            position:relative;
            z-index:1;
            /*border:1px solid #E5D1A1;*/
            text-align:center;
            /*width:200px;
            height:35px;
            line-height:30px;*/
            margin-left: 15px;

        }
        .tips{
            position:absolute;
            z-index:2;
            width:400px;
            height:auto;
            /*border:1px solid #E5D1A1;*/
            background:#fff;
            display:none;
        }
        .btn{
            margin-left: 5px;
        }
        
        
         .footer {
            border-top: 1px solid #e5e5e5;
            color: #777;
            padding: 19px 0;
            background-color: #f5f5f5;
            margin-top: 2%;
        }
        
        .my_label img{
            margin-left: 2px;
            width:20px;
            height:20px;
        }

        ul{
          list-style-type: none;
        }

        
    </style>
    <body>
