<?php
// Exit if accessed directly
if ( !defined( 'ABSPATH' ) ) exit;

// BEGIN ENQUEUE PARENT ACTION
// AUTO GENERATED - Do not modify or remove comment markers above or below:

if ( !function_exists( 'chld_thm_cfg_locale_css' ) ):
    function chld_thm_cfg_locale_css( $uri ){
        if ( empty( $uri ) && is_rtl() && file_exists( get_template_directory() . '/rtl.css' ) )
            $uri = get_template_directory_uri() . '/rtl.css';
        return $uri;
    }
endif;
add_filter( 'locale_stylesheet_uri', 'chld_thm_cfg_locale_css' );
         
if ( !function_exists( 'child_theme_configurator_css' ) ):
    function child_theme_configurator_css() {
        enqueue_style( 'chld_thm_cfg_child', trailingslashit( get_stylesheet_directory_uri() ) . 'style.css', array( 'hello-elementor','hello-elementor','hello-elementor-theme-style' ) );
        enqueue_style( 'extra-css', get_stylesheet_directory_uri() . '/assets/css/extra-style.css',false,'','all');
    }
endif;
add_action( 'enqueue_scripts', 'child_theme_configurator_css', 10 );

// END ENQUEUE PARENT ACTION


function gfmc_scripts(){
	
	// register style
    //wp_enqueue_style( 'extra-css', get_stylesheet_directory_uri() . '/assets/css/extra-style.css',false,'','all');

    // if( is_page( 8921 ) ) {

    // 	wp_enqueue_script( 'conatct-js', get_stylesheet_directory_uri() . '/assets/js/contact.js', array('jquery'), '1.0', true );

    // }


    // Add custom script.
    wenqueue_script('pdf-js-1', 'https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js', [ 'jquery' ], false, true );
    //wp_enqueue_script('pdf-js-2', 'https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js', [ 'jquery' ], false, true );

	enqueue_script(

		'gfmc-js',

		get_stylesheet_directory_uri() . '/assets/js/main.js',

		[ 'jquery' ],

		false,

		true

	);

    enqueue_script(

        'mail-js',

        get_stylesheet_directory_uri() . '/assets/js/ajax-send-mail.js',

        [ 'jquery' ],

        false,

        true

    );
    

	
}
add_action( 'wenqueue_scripts', 'gfmc_scripts');



//SEND EMAIL

add_action( 'ajax_nopriv_gfmc_ajax_mailing','gfmc_ajax_mailing' ); //not logged-in user
add_action( 'ajax_gfmc_ajax_mailing','gfmc_ajax_mailing' ); //logged in user

function gfmc_ajax_mailing(){
    
    $sub_val = $_POST["sub_val"];
    $name_val = $_POST["name_val"];
    $mail_val = $_POST["mail_val"];

    $huminity = $_POST["huminityx"];
    $temp = $_POST["tempx"];
    $cost = $_POST["costx"];
    $bird = $_POST["birdTypex"];
    $bird_count = $_POST["birdCountx"];

    $tcc = $_POST["tempCondx"];
    $hcc = $_POST["humCondx"];

    $to = $mail_val;
    $subject = $sub_val;

    $message = "
    <html>
    <head>
    <title>HTML email</title>
    </head>
    <body>
    <h2>Calculation Result </h2>
            <p><b>$huminity</b> Weather (Based on Humidity)</p>
            <p><b>$temp</b> Weather (Based on Temperature)</p>
            <p><b>$cost</b> TK for starting month</p>
            <p><b>$bird</b> Count: <b> $bird_count</b></p>
            <p><b>Temperature Control Cost:</b> </br>$tcc</p>
            <p><b>Humidity Control Cost:</b> </br>$hcc</p>
    </body>
    </html>
    ";

    // Always set content-type when sending HTML email
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

    // More headers
    // $headers .= 'From: <contact@gfmc.com>' . "\r\n";
    // $headers .= 'Cc: myboss@example.com' . "\r\n";

    mail($to,$subject,$message,$headers);
    
    echo "<div class='success-message'>Seding Email Successfully To: ".$mail_val."</div>";
    die();

}


