jQuery(document).ready(function($){


	$("#sendemail").click(function(){



		console.log("BALA");

			var contactSubject = $("#contact-for").val();
			var contactName =  $("#contact-name").val();
			var contactEmail = $("#contact-email").val();
			
			var hum1 = $(".wtype1").val();
			var ttype1 = $(".ttype1").val();
			var costvalx = $(".cost-val-x").val();
			var birdType = $(".bird-type-val-x").val();
			var birdCount = $(".bird-count-val-x").val();
			var tempCond = $(".temp-cost-x").val();
			var humCond = $(".hum-cost-x").val();
			//alert(hum1);


			var that = $(this);
			var page = that.data('page');
			var newpage = page+1;
			var ajaxurl = that.data('url');

			var sub_val = contactSubject;
			var name_val = contactName;
			var mail_val = contactEmail;

			var huminityx = hum1;
			var tempx = ttype1;
			var costx = costvalx;
			var birdTypex = birdType;
			var birdCountx = birdCount;
			var tempCondx = tempCond;
			var humCondx = humCond;

			console.log("Subject : " + sub_val);
			console.log("Name : " + name_val);
			console.log("Email : " + mail_val);

			$.ajax({
				url : ajaxurl,
				type: 'post',
				data: {
					page : page,
					sub_val : sub_val,
					name_val : name_val,
					mail_val : mail_val,
					huminityx : huminityx,
					tempx : tempx,
					costx : costx,
					birdTypex : birdTypex,
					birdCountx : birdCountx,
					tempCondx : tempCondx,
					humCondx : humCondx,
					action: 'gfmc_ajax_mailing'
				},
				error : function( response ){
					console.log(response);
				},

				success: function( response ){	
					console.log('lol wololo');
					that.data('page', newpage);
					$('.eikhane-dekhamu').html( response );
				}

			});
	});



             




});