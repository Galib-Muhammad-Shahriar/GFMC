<?php
/*
Template Name: Disease Page Template
*/

?>

<?php get_header( ); ?>

<?php while ( have_posts() ) : the_post(); ?>

<section class="sample-page">

    <div class="container">
        <div class="row">

            <div class="col-lg-12">
			
            	<div class="page-def-inner-data align-middle">
            		
                    <div class="breed-block">
                        <div class="breed-name">
                            <h4></i>Disease Name: </i>New Castle</h4>
                        </div>
                        <div class="formx">
                            <img id="blah" src="https://i.stack.imgur.com/y9DpT.jpg" alt="your image" /></br>
                            <input type='file' id="imgInp" /></br>
                            <input type='submit' id="check_breed" value="Check Now" />
                            <!-- <button id="check_breed">Check Breed</button> -->
                        </div>
                    </div>


            	</div>
            	
            </div>
            
        </div>
    </div>

</section>

<?php endwhile; ?>

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