function saveContactData(){
  var formData = new FormData($("#contactForm")[0]);
  $.ajax({
    type: "POST",
    url: BASE_URL +'contact-save-data',
    data: formData,
    enctype:'multipart/form-data',
    contentType : false,
    processData : false,
    beforeSend:function(){

      $('.contactButton').prop('disabled',true);
      $('.contactButton').html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>Sending...');
    },
    success:function(result){

      var data = jQuery.parseJSON(result);
      if(data.status == 1){
        $('.contactButton').html('Saved');
        toastr.success(data.message, 'Send success', {timeOut: 1000,progressBar:true,onHidden:function() { window.location.href = BASE_URL+'contact'; }  });
      } else {
        $('.contactButton').prop('disabled',false);
        $('.contactButton').html('Send');
        toastr.error(data.message, 'Send failed', {timeOut: 2000,closeButton:true,progressBar:true});
      }
    }
  });
}
$(document).ready(function(){
  $(".contactButton").click(function(){
    var enable = true;
    $( ".validate" ).each(function( index,element ) {
      if($(element).val() == ''){
        toastr.error($(element).data('validate-msg'), 'Validation failed', {timeOut: 2000,closeButton:true,progressBar:true});
        enable = false;
        return false;
      }

     
      var message = $("#message").val();
      if (message !='' && message.length < 100) {
        toastr.error('Please enter minimum 100 character', 'Validation failed', {timeOut: 2000,closeButton:true,progressBar:true});
        enable = false;
        return false;

      }
      
    });
    if(enable){
      saveContactData();
    }
  });
  });