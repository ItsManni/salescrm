function AddSubAdmin() {
  $("#addsubadmin").modal("show");
  $("#addUpdateBtn").html("Add");
  $("#SubAdminHeading").html("Add Sub Admin");
}

function UpdateSubAdmin() {
  $("#addsubadmin").modal("show");
  $("#addUpdateBtn").html("Update");
  $("#SubAdminHeading").html("Update Sub Admin");
}

$("#view-subadmin").DataTable({
  autoFill: true,
});


function isValidEmail(email) {
  // Regular expression to check if the email is valid
  var emailRegex = /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/;
  
  // Test the email against the regular expression
  return emailRegex.test(email);
}


function AddUpdateSubAdmin(){
  var sub_admin_name = $("#sub_admin_name").val();

  if(sub_admin_name == ""){
      WeboAlert("Please Enter Sub-Admin Name")
  }

  var sub_admin_password = $("#sub_admin_password").val();

  if(sub_admin_password == ""){
      WeboAlert("Please Enter Sub-Admin Password")
  }

  var email = $("#sub_admin_email").val();
  if (!isValidEmail(email)) {
    WeboAlert("Please enter valid sub-admin email address");
    return false;
  } 


  
}
