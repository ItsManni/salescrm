$(document).ready(function() {
        var i = 1;
        $('#view_monthly').dataTable({
             responsive: true,
            'processing': true,
            'serverSide': true,
            'ordering': false,
            'serverMethod': 'post',
            'ajax': {
                'url': 'ajax/view-all-monthly-affairs.php'
            },
            'columnDefs': [{
                "targets": [0],
                "className": "text-center"
            }],
            "order": [
                [1, 'asc']
            ],
            'columns': [{
                "data": "id",
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: 'MonthlyDate'
                },
                {
                    data: 'PdfName'
                },
                {
                    data: 'Edit'
                },
                {
                    data: 'Delete'
                }


            ]


        });
    });


/*################ Add Current Affairs Model Open Code Start ################*/
function AddMonthly_Affairs() 
{
  // $("#monthly_date").val("");
  // const $dateInputField = $(".datePicker");
  // const currentDate = new Date();
  // const formattedDate = currentDate.toISOString().split('T')[0];
  // $dateInputField.val(formattedDate);
  $("#Update_Monthly_Affairs_Btn").hide();
  $("#Add_Monthly_Affairs_Btn").show();
  $("#add_monthly").modal("show");
  $("#Add_Monthly_Affairs_Btn").html("Add");
  $("#MonthlyHeading").html("Add Monthly Affairs");
  $("#Monthly_Affairs_Show").text("");
}

/* Current Affairs Insert*/
function AddMonthlyAffairs()
{

  var monthly_date = $("#monthly_date").val();
  if(monthly_date == ""){
      ProductAlert("Please Enter Month.");
      return false;
  }

  var monthly_pdf = $("#monthly_pdf").val();
  if(monthly_pdf == ""){
      ProductAlert("Please upload Monthly Affair PDF.");
      return false;
  }
  let myForm = document.getElementById("monthly_form");
  var formData = new FormData(myForm);

  $("#Add_Monthly_Affairs_Btn").html("Please Wait..");
  $.ajax({
      url: "action/add-monthly-pdf.php",
      type: "POST",
      data: formData,
      success: function(data) {
          var response = JSON.parse(data);
          ProductAlert(response.message);
          if (response.error == false) {
              setInterval(function() {
                  location.reload();
              }, 1500);
              $("#Add_Monthly_Affairs_Btn").html("Add");
              $('#monthly_form')[0].reset();
          }
      },
    cache: false,
    contentType: false,
    processData: false,
  });
    return false;
  
}



/*################ Add Current Affairs Model Open Code End ################*/

/*function UpdateMonthly() {
  $("#add_monthly").modal("show");
  $("#addUpdateBtn").html("Update");
  $("#MonthlyHeading").html("Update Monthly Affairs");
}*/
/*################ Update Current Affairs Model Open Code Start ################*/

$("#view_monthly").on("click",".Edit_Monthly_Affairs",function(){
    $("#Add_Monthly_Affairs_Btn").hide();
    $("#Update_Monthly_Affairs_Btn").show();
    $("#add_monthly").modal("show");
    $("#Update_Monthly_Affairs_Btn").html("Update");
    $("#MonthlyHeading").html("Update Monthly Affairs");
    var ID = $(this).attr("data-inspect_id");
    var CurrentDate = $(this).attr("alt");
    var PdfName = $(this).attr("alt2");
    $('#monthly_date').val(CurrentDate);
    $('#Monthly_Affairs_Show').text(PdfName); 
    $('#monthly_update_id').val(ID);
  });

/* Current Affairs Update */

function UpdateMonthlyAffairs()
{
  var monthly_date = $("#monthly_date").val();
  if(monthly_date == ""){
      ProductAlert("Please Enter Month.");
      return false;
  }

  var monthly_pdf = $("#monthly_pdf").val();
  if(monthly_pdf == ""){
      ProductAlert("Please upload Monthly Affair PDF.");
      return false;
  }
  let myForm = document.getElementById("monthly_form");
  var formData = new FormData(myForm);

  $("#Update_Monthly_Affairs_Btn").html("Please Wait..");
  $.ajax({
      url: "action/update_monthly_pdf.php",
      type: "POST",
      data: formData,
      success: function(data) {
          var response = JSON.parse(data);
          ProductAlert(response.message);
          if (response.error == false) {
              setInterval(function() {
                  location.reload();
              }, 1500);
              $("#Update_Monthly_Affairs_Btn").html("Update");
              $('#monthly_form')[0].reset();
          }
      },
    cache: false,
    contentType: false,
    processData: false,
  });
    return false;
  
}


/*################ Update Current Affairs Model Open Code End ################*/

function isValidEmail(email) {
  // Regular expression to check if the email is valid
  var emailRegex = /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/;
  
  // Test the email against the regular expression
  return emailRegex.test(email);
}

function validISNumber(basic) {
        const input = event.target;
        let value = input.value;

        value = value.replace(/[^0-9.]/g, ''); // Remove non-numeric characters

        input.value = value;
}

function DeleteMonthlyPdf(Monthly_id) {
  alertify.confirm(
    "TechXpert ",
    "Do you really want to delete Monthly Affair?",
    function () {
      $.post(
       "action/delete-monthly-pdf.php",
        {
          ID: Monthly_id,
        },
        function (data, status) {
          var response = JSON.parse(data);
          ProductAlert(response.message);
          if (response.error == false) {
            setInterval(function () {
              location.reload();
            }, 2000);
          }
        }
      );
    },
    function () {
      alertify.error("Deletion Cancelled");
    }
  );
}
/* Date Not Selected Next Date*/
 // document.addEventListener("DOMContentLoaded", function() {
 //        var datePicker = document.querySelector(".datePicker");
 //        var today = new Date().toISOString().split("T")[0];
 //        datePicker.setAttribute("max", today);
 //        datePicker.addEventListener("input", function() {
 //            if (datePicker.value > today) {
 //                datePicker.value = today;
 //            }
 //        });
 //    });