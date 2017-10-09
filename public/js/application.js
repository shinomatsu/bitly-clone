 $(document).ready(function(){
    $(".toggle").click(function () {
      $(".inner_child").slideToggle();
    });


	// $("#shino").submit(function (event) {
	// 	event.preventDefault();
	// // by default it will go to controllers/static.rb look for post urls and load the code
	// 	$.ajax({
	// 	  type: "POST",
	// 	  url: "/urls",
	// 	  dataType: "JSON",
	// 	  data: $(this).serialize(),
	//         success: function(data) {
	//         	// data is the return result in json format
	//         	console.log(data);
	//         if(data.short_url){
	//         	$(".shinoshino").html(data.new_url);
	//     	}
	//     	else
	//     		$(".shinoshino").html(data);
	//         }
	// 	});
	// });





 });



