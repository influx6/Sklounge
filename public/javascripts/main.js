$(function(){

 $('.slider').cycle({
    fx:    'fade',
    speed:  2500
 });

  $('#datepicker').datepicker();

  $("a[rel^='prettyPhoto']").prettyPhoto({
     theme: 'dark_rounded' ,
     padding:10 ,
     hideflash:true
  });

});

