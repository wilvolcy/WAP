var b=12;
var rest ;
document.getElementById("area").style.fontSize = b+"px";

var function1= function (){
    rest= setInterval(displayMsg, 500);
};

document.getElementById("biggerButton").onclick= function test(){
    
    if(b===12){
        document.getElementById("area").style.fontSize = b+"px";
          function1();
       ++b;
    }
    else{
        clearInterval(rest);
        b=12;
     
       
    }
     
}

    





function displayMsg(){
    // alert("Hello world");
    // document.getElementById("area").style.fontSize = "24px";
    
    var areaVal = document.getElementById("area");
    var res = window.getComputedStyle(areaVal,null).getPropertyValue('font-size');
    document.getElementById("area").style.fontSize =  parseInt(res)+2+"px";;
    

};
 
document.getElementById("box").onclick=function displayMsg2(){
   
    if(document.getElementById("box").checked){
        // document.getElementById("area").style.fontColor = "bold";
        document.getElementById("area").style.color = "green";   
        document.getElementById("area").style.textDecoration = "underline";
        document.body.style.backgroundImage = "URL('Images/hundred.jpg')";
       // document.body.style.backgroundColor = "#fff3ff";

    }
    if(!document.getElementById("box").checked){
        document.getElementById("area").style.color = "black";
        document.getElementById("area").style.textDecoration = "none"; 
        document.getElementById("area").style.fontWeight = "normal";
        document.body.style.backgroundImage = "none";

       
    }
    
};