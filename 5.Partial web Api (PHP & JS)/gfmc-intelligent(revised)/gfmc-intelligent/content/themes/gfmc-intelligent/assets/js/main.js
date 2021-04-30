(function($) {
"use strict";
 
	

    $(document).on('keyup', 'input[name=humidity]', function() {
      var _this = $(this);
      var min = parseInt(_this.attr('min')) || 1; // if min attribute is not defined, 1 is default
      var max = parseInt(_this.attr('max')) || 100; // if max attribute is not defined, 100 is default
      var val = parseInt(_this.val()) || (min - 1); // if input char is not a number the value will be (min - 1) so first condition will be true
      if (val < min)
        _this.val(min);
      if (val > max)
        _this.val(max);
    });

    $(function() {
        
        // Open Popup
            $('[popup-open]').on('click', function() {
                var popup_name = $(this).attr('popup-open');
         $('[popup-name="' + popup_name + '"]').fadeIn(300);
            });
         
            // Close Popup
            $('[popup-close]').on('click', function() {
         var popup_name = $(this).attr('popup-close');
         $('[popup-name="' + popup_name + '"]').fadeOut(300);
            });
         
            // Close Popup When Click Outside
            $('.popup').on('click', function() {
         var popup_name = $(this).find('[popup-close]').attr('popup-close');
         $('[popup-name="' + popup_name + '"]').fadeOut(300);
            }).children().click(function() {
         return false;
            });
     
    });

    //PRINT PDF
    var pdfdoc = new jsPDF();
    var specialElementHandlers = {

    '#ignoreContent': function (element, renderer) {

        return true;

    }

    };


    jQuery(document).ready(function($) {
       
          function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    
                    reader.onload = function (e) {
                        $('#blah').attr('src', e.target.result);
                    }
                    
                    reader.readAsDataURL(input.files[0]);
                }
            }
            
            $("#imgInp").change(function(){
                readURL(this);
                $("#check_breed").addClass("vis");
            });

            $("#check_breed").click(function(){
                $(".breed-name").addClass("vis");
          });


          $( ".calculation" ).click(function() {
            
            //Bird
            var bird = $("input[name='bird']:checked").val();
            $(".bird-type-val").html( bird );
            $(".bird-type-val-x").val( bird );


            console.log( "Bird: "+ bird );

            //Area
            var area = $( ".area" ).val(); 
            console.log( "Area: "+ area );

            //Level
            var level = $( ".level" ).val(); 
            console.log( "Level: "+ level );

            //Humidity
            var hum = $( ".humidity" ).val(); 
            console.log( "Humidity: "+ hum );

            //Temperature
            var temp = $( ".temperature" ).val(); 
            console.log( "Temperature: "+ temp );


            console.log( "=================== " );

            

            //Humidity Condition
            if( ( hum >= 0 ) && ( hum <= 44 ) ){
              var hum_type = "Dry";
              $(".wtype").html("Dry");
              $(".wtype1").val( "Dry" );
              console.log( "Humidity Type = Dry" );

            } else if( ( hum >= 45 ) && ( hum <= 65 ) ){

              var hum_type = "Normal";
              $(".wtype").html("Normal");
              $(".wtype1").val( "Normal" );

              console.log( "Humidity Type = Normal" );

            } else {

              var hum_type = "Wet";
              $(".wtype").html("Wet");
              $(".wtype1").val( "Wet" );


              console.log( "Humidity Type = Wet" );

            }

            //Temperature Condition
            if( ( temp >= 0 ) && ( temp <= 14 ) ){

              var temp_type = "Cold";
              $(".ttype").html("Cold");
              $(".ttype1").val( "Cold" );

              console.log( "Temperature Type = Cold" );

            } else if( ( temp >= 15 ) && ( temp <= 30 ) ){

              var temp_type = "Normal";
              $(".ttype").html("Normal");
              $(".ttype1").val( "Normal" );

              console.log( "Temperature Type = Normal" );

            } else if( ( temp >= 31 ) && ( temp <= 50 ) ){

              var temp_type = "Hot";
              $(".ttype").html("Hot");
              $(".ttype1").val( "Hot" );

              console.log( "Temperature Type = Hot" );

            }else {

              var temp_type = "Harsh";
              $(".ttype").html("Harsh");
              $(".ttype1").val( "Harsh" );

              console.log( "Temperature Type = Harsh" );

            }


            //Humidity Conditional Farming
            if( ( hum >= 45 ) && ( hum <= 65 ) ){

              var hcf = "0% additional cost";
              $(".hum_cost_main").html("0% additional cost");
              $(".hum-cost-x").val( "0% additional cost" );

              console.log( "0% additional cost" );

            } else if( ( hum >= 0 ) && ( hum <= 44 ) ){

              var hcf = "10%-12% additional cost";
              $(".hum_cost_main").html("10%-12% additional cost");
              $(".hum-cost-x").val( "10%-12% additional cost" );

              console.log( "10%-12% additional cost" );

            } else if( ( hum >= 66 ) && ( hum <= 100 ) ){

              var hcf = "10%-12% additional cost";
              $(".hum_cost_main").html("10%-12% additional cost");
              $(".hum-cost-x").val( "10%-12% additional cost" );

              console.log( "10%-12% additional cost" );

            }else {

              var hcf = "Cost Not Found";
              $(".hum_cost_main").html("Cost Not Found");
              $(".hum-cost-x").val( "Cost Not Found" );

              console.log( "Cost Not Found" );
            }



            //Temperature Conditional Farming
            if( ( temp >= 15 ) && ( temp <= 30 ) ){

              var tcf = "0% additional cost";
              $(".temp_cost_main").html("0% additional cost");
              $(".temp-cost-x").val( "0% additional cost" );

              console.log( "0% additional cost" );

            } else if( ( temp >= 0 ) && ( temp <= 14 ) ){

              var tcf = "12%-15% additional cost";
              $(".temp_cost_main").html("12%-15% additional cost");
              $(".temp-cost-x").val( "12%-15% additional cost" );

              console.log( "12%-15% additional cost" );

            } else if( ( temp >= 31 ) && ( temp <= 50 ) ){

              var tcf = "12%-15% additional cost";
              $(".temp_cost_main").html("12%-15% additional cost");
              $(".temp-cost-x").val( "12%-15% additional cost" );

              console.log( "12%-15% additional cost" );

            }else {

              var tcf = "Farming not possible in micro level";
              $(".temp-cost-x").val( "Farming not possible in micro level" );
              $(".temp_cost_main").html("Farming not possible in micro level");
              console.log( "Farming not possible in micro level" );

            }


            if( bird == 'Hen' ) {

              var b_count = ( 13*(area) )* level;
              var cost = ( area*13*60*level ) + ( area*13*120*level );

              $(".bird-count").html( b_count );
              $(".cost-val").html( cost );

              $(".bird-count-val-x").val( b_count );
              $(".cost-val-x").val( cost );


            } else if( bird == 'Duck' ){

              var b_count = ( 10*(area) )* level;
              var cost = ( area*10*80*level ) + ( area*10*150*level );

              $(".bird-count").html( b_count );
              $(".cost-val").html( cost );

              $(".bird-count-val-x").val( b_count );
              $(".cost-val-x").val( cost );


            } else {

              var b_count = ( 3*(area) )* level;
              var cost = ( area*3*150*level ) + ( area*3*500*level );

              $(".bird-count").html( b_count );
              $(".cost-val").html( cost );

              $(".bird-count-val-x").val( b_count );
              $(".cost-val-x").val( cost );
              

            }

            

             $("#gpdf").click(function(){

                pdfdoc.fromHTML($('#pdfBlock').html(), 10, 10, {

                'width': 110,

                'elementHandlers': specialElementHandlers

                });

                pdfdoc.save('gfmc-calculation-result.pdf');

            });

          });





      });
    



 
})(jQuery);