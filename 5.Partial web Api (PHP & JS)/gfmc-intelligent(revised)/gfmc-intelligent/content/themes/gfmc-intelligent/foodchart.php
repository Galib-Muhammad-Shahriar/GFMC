<?php
/*
Template Name: Cost Calculation Template
*/

?>

<?php get_header( ); ?>

<?php while ( have_posts() ) : the_post(); ?>

	<style>
		.bird-type label {
		   margin-right: 20px;
		   color: #fff;
		   margin-top: -6px;
		}

		.area-others {
		    max-width: 300px;
		    text-align: center;
		    margin: 0px auto;
		}

		.area-others label.l-align {
	        text-align: left !important;
		    color: #fff;
		    width: 100%;
		    margin-bottom: 8px;
		    margin-top: 20px;
		}

		input.calculation {
		    margin-top: 20px;
		    width: 100%;
		    background: #FFBF00;
		    color: #fff;
		    border: 1px solid #FFBF00;
		    transition: .4s;
		}

		input.calculation:hover{
			background: #000;
		    border: 1px solid #000;

		}

		/* Popup Open button */ 
		.open-button{
		    color:#FFF;
		    background:#0066CC;
		    padding:10px;
		    text-decoration:none;
		    border:1px solid #0157ad;
		    border-radius:3px;
		}
		 
		.open-button:hover{
		    background:#01478e;
		}
		 
		.popup {
		    position:fixed;
		    top:0px;
		    left:0px;
		    background:rgba(0,0,0,0.75);
		    width:100%;
		    height:100%;
		    display:none;
		}

		.popup-content {
		    width: 90%;
		}

		.popup-content {
		    width: 90%;
		    margin: 0 auto;
		    box-sizing: border-box;
		    padding: 40px 20px;
		    margin-top: 20px;
		    box-shadow: 0px 2px 6px rgb(0 0 0);
		    border-radius: 3px;
		    background: #fff;
		    position: relative;
		    top: 6%;
		}

		.close-button {
		    width: 25px;
		    height: 25px;
		    position: absolute;
		    top: -10px;
		    right: -10px;
		    border-radius: 20px;
		    background: rgba(0,0,0,0.8);
		    font-size: 20px;
		    text-align: center;
		    color: #fff;
		    text-decoration: none;
		    line-height: 1;
		}

		.elementor-column {
		    display: none;
		}

		span.wtype,
		span.ttype,
		span.bird-type-val {
		    color: #ffc107;
		    font-weight: 700;
		}

		p.cost {
		    padding: 2px;
		    color: #505050;
		    font-weight: 500;
		    border-bottom: 1px dashed #d6d6d6;
		}

		p.bird-cost,
		p.wet-weather,
		p.cold-weather {
			border-bottom: 1px dashed #d6d6d6;
			padding: 2px;
		}

		.popup-content h2 {
		    font-size: 24px;
		    background: #ff9800;
		    padding: 10px;
		    text-align: center;
		    color: #fff;
		    border: 2px dotted #f1f1f1;
		}

		button#gpdf {
		    background: #333;
		    color: #ff9800;
		    border: 1px solid #333;
		}

		.popup-content.mail-popup input {
		    margin-bottom: 10px;
		}

		button#sendemail,
		input.generateEmail {
		    background: #ff9800;
		    color: #fff;
		    border: none;
		}

		a#sendemail {
		    background: #ff9800;
		    padding: 8px 20px;
		    max-width: 100px;
		    display: block;
		    color: #fff;
		    margin-top: 2px;
		    text-align: center;
		}

		.success-message {
		    background: #c0f5c0;
		    padding: 8px;
		    margin-top: 15px;
		    text-align: center;
		    color: #505050;
		}

	</style>

<section class="sample-page cost-calculation-page">

    <div class="container">
        <div class="row">

            <div class="col-lg-12">
			
            	<div class="page-def-inner-data align-middle">
            		
                    <div class="breed-block">
                        <div class="cost-block">
                        	<div class="bird-type">
                        		<input type="radio" id="hen" name="bird" value="Hen" checked>
								<label for="Hen">Hen</label>
								<input type="radio" id="turkey" name="bird" value="Turkey">
								<label for="Turkey">Turkey</label>
								<input type="radio" id="duck" name="bird" value="Duck">
								<label for="Duck">Duck</label>
                        	</div>
                        	<div class="area-others">
                        		<label for="area" class="l-align">Area</label>
                        		<input type="number" name="area" class="area" value="">
                        		<label for="level" class="l-align">level</label>
                        		<input type="number" name="level" class="level" value="">

                        		<label for="humidity" class="l-align">Humidity</label>
                        		<input type="number" name="humidity" class="humidity" min="0" max="100" value="">
                        		<label for="temperature" class="l-align">Temperature</label>
                        		<input type="number" name="temperature" class="temperature" value="">

                        		<input type="submit" name="calculation" class="calculation open-button" value="Calculate" popup-open="popup-1" href="javascript:void(0)">

                        	</div>
                        </div>
                    </div>


            	</div>
            	
            </div>
            
        </div>
    </div>

</section>

<?php endwhile; ?>


<div class="popup-block">
	<div class="popup" popup-name="popup-1">
        <div class="popup-content" id="pdfBlock">
            <h2>Calculation Result </h2>
	        <p class="wet-weather"><span class="wtype"></span> Weather (Based on Humidity)</p>
	        <input type="hidden" name="" class="wtype1" value="">
	        
	        <p class="cold-weather"><span class="ttype"></span> Weather (Based on Temperature)</p>
	        <input type="hidden" name="" class="ttype1" value="">

	        <p class="cost"> <span class="cost-val">1200</span> TK for starting month</p>
	        <input type="hidden" name="" class="cost-val-x" value="">

	        <p class="bird-cost"> <span class="bird-type-val">Hen</span> Count: <span class="bird-count"> 1300</span></p>
	        <input type="hidden" name="" class="bird-type-val-x" value="">
	        <input type="hidden" name="" class="bird-count-val-x" value="">

	        <p class="temp-cost"><b>Temperature Control Cost:</b> </br><span class="temp_cost_main"> </span></p>
	        <input type="hidden" name="" class="temp-cost-x" value="">

	        <p class="hum-cost"><b>Humidity Control Cost:</b> </br><span class="hum_cost_main"> </span></p>
	        <input type="hidden" name="" class="hum-cost-x" value="">

	        <a class="close-button" popup-close="popup-1" href="javascript:void(0)">x</a>

	        <button id="gpdf">Generate PDF</button>
	        <input type="submit" name="SendInMail" class="generateEmail open-button" value="Send In Mail" popup-open="popup-2" href="javascript:void(0)">
        </div>
    </div> 
</div>

<div class="popup-block-2">
	<div class="popup" popup-name="popup-2">
        <div class="popup-content mail-popup">
        	<a class="close-button" popup-close="popup-2" href="javascript:void(0)">x</a>
        	<input type="hidden" name="subject" value="Calculation Result" id="contact-for">
            <input type="text" name="name" placeholder="Your Name" id="contact-name" value="">
            <input type="email" name="email" placeholder="Your Email" id="contact-email" value="">

	        <a id="sendemail" class="ajax-mail-serv" href="#" data-url="<?php echo admin_url( 'admin-ajax.php' );?>" data-page="1">Submit</a>
	        <div class="eikhane-dekhamu">
	        	
	        </div>
        </div>
    </div> 
</div>	

<script type="text/javascript">
    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                .attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }

    }
</script>

<?php get_footer( ); ?>