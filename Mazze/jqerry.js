$(document).ready(function(){
    
    let status=false;

    $(".boundary").mouseover(function(){
        if(status){
            $('.boundary').addClass('youlose');
            //alert(`You just moved your mouse over the ${$('#maze')} element!`);
            $("#status").text('You Lose! :[')
            status=false;
        }
    });
    
    $("#start").click(function(){
        status=true;   
           
    });

    $("#end").click(function(){
        if(status==true){
            $("#status").text('You Win! :]');
            status=false;
        }
    });

    $('body').mousemove(function(event){
        if(status==true && event.pageX<518){
            $('.boundary').addClass('youlose');            
            $("#status").text('You Lose! :[');
            status=false;
        }
    });
})();