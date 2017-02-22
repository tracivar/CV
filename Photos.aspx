<%@ Page Title="" Language="C#" MasterPageFile="~/Design.Master" AutoEventWireup="true" CodeBehind="Photos.aspx.cs" Inherits="WebDesignNew.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Portfolio Page</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main-content">

        <div class="headline">
        <h1>Portfolio</h1>
    </div>

    <div id="main">
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/1.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/2.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/3.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/4.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/5.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/6.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/7.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/8.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/9.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/10.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/11.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/12.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/13.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/14.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/15.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/16.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/17.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/18.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/19.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/20.jpg"/>
        </div>
    </div>
    <div class="pin">
        <div class="box">
            <img src="/SiteAssets/images/21.jpg"/>
        </div>
    </div>
</div>


        </div>

    

    <script type="text/javascript">

        window.onload = function () {

            waterfall('main', 'pin');

            var dataInt = { 'data': [{ 'src': '22.jpg' }, { 'src': '23.jpg' }, { 'src': '24.jpg' }, { 'src': '25.jpg' }, { 'src': '26.jpg' }, { 'src': '27.jpg' }, { 'src': '28.jpg' }, { 'src': '29.jpg' }, { 'src': '30.jpg' }, { 'src': '31.jpg' }, { 'src': '32.jpg' }, { 'src': '33.jpg' }, { 'src': '34.jpg' }, { 'src': '35.jpg' }, { 'src': '36.jpg' }] };

            window.onscroll = function () {
                if (checkscrollside()) {
                    var oParent = document.getElementById('main');
                    for (var i = 0; i < dataInt.data.length; i++) {
                        var oPin = document.createElement('div'); 
                        oPin.className = 'pin';                   
                        oParent.appendChild(oPin);              
                        var oBox = document.createElement('div');
                        oBox.className = 'box';
                        oPin.appendChild(oBox);
                        var oImg = document.createElement('img');
                        oImg.src = '/SiteAssets/images/' + dataInt.data[i].src;
                        oBox.appendChild(oImg);
                    }
                    waterfall('main', 'pin');
                };
            }
        }

        /*
            parend 父级id
            pin 元素id
        */
        function waterfall(parent, pin) {
            var oParent = document.getElementById(parent);
            var aPin = getClassObj(oParent, pin);
            var iPinW = aPin[0].offsetWidth;
            var num = Math.floor(document.documentElement.clientWidth*0.8 / iPinW);
            oParent.style.cssText = 'width:' + iPinW * num + 'px;margin:0 auto;';

            var pinHArr = [];
            for (var i = 0; i < aPin.length; i++) {
                var pinH = aPin[i].offsetHeight;
                if (i < num) {
                    pinHArr[i] = pinH; 
                } else {
                    var minH = Math.min.apply(null, pinHArr);
                    var minHIndex = getminHIndex(pinHArr, minH);
                    aPin[i].style.position = 'absolute';
                    aPin[i].style.top = minH + 'px';
                    aPin[i].style.left = aPin[minHIndex].offsetLeft + 'px';
                  
                    pinHArr[minHIndex] += aPin[i].offsetHeight;
                }
            }
        }

        

        function getClassObj(parent, className) {
            var obj = parent.getElementsByTagName('*');
            var pinS = [];
            for (var i = 0; i < obj.length; i++) {
                if (obj[i].className == className) {
                    pinS.push(obj[i]);
                }
            };
            return pinS;
        }
        


        function getminHIndex(arr, minH) {
            for (var i in arr) {
                if (arr[i] == minH) {
                    return i;
                }
            }
        }


        function checkscrollside() {
            var oParent = document.getElementById('main');
            var aPin = getClassObj(oParent, 'pin');
            var lastPinH = aPin[aPin.length - 1].offsetTop + Math.floor(aPin[aPin.length - 1].offsetHeight / 2);
            var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
            var documentH = document.documentElement.clientHeight;
            return (lastPinH < scrollTop + documentH) ? true : false;
        }

    </script>
</asp:Content>