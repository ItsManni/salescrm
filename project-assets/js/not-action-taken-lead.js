function ClearLeadFillter() {
    $('#export_fillter_form')[0].reset();
    // $('#all_leads').DataTable().ajax.reload();

    setInterval(function () {
        location.reload();
    }, 1500);
}

function SearchFillterLead(UserType) {
    var table = $('#all_leads').DataTable();
    table.destroy();
    var param = "";
    var filter_start_date = document.getElementById("filter_start_date").value;
    var filter_end_date = document.getElementById("filter_end_date").value;
    param = "?filter_start_date=" + filter_start_date + "&filter_end_date=" + filter_end_date;

    var fillter_assign = document.getElementById("fillter_assign");
    if (fillter_assign !== null) {
        var fillter_assign = document.getElementById("fillter_assign").value;
        param = param + "&fillter_assign=" + fillter_assign;
    }
    var fillter_center = document.getElementById("center_id");
    if (fillter_center !== null) {
        var fillter_center = document.getElementById("center_id").value;
        param = param + "&BranchID=" + fillter_center;
    }

    var fillter_status = document.getElementById("fillter_status");
    if (fillter_status !== null) {
        var fillter_status = document.getElementById("fillter_status").value;
        param = param + "&fillter_status=" + fillter_status;
    }

    var fillter_lead_source = document.getElementById("fillter_lead_source");
    if (fillter_lead_source !== null) {
        var fillter_lead_source = document.getElementById("fillter_lead_source").value;
        param = param + "&fillter_lead_source=" + fillter_lead_source;
    }
    var columns = [
        {
            "data": "id",
            render: function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }
        },
        {
            data: 'Services'
        },
        {
            data: 'CompanyName_TypeofBusiness'
        },
        {
            data: 'Mobile_Email'
        },
        {
            data: 'ViewDetails'
        },
        {
            data: 'Status'
        },
        {
            data: 'AssignedTo'
        },
        {
            data: 'Action'
        }
    ];
    if (UserType == "System Admin") {
        columns.splice(1, 0, {
            data: 'BranchID'
        });
    }

    $('#all_leads').dataTable({
        responsive: true,
        'processing': true,
        'serverSide': true,
        'ordering': false,
        'serverMethod': 'post',
        'ajax': {
            'url': 'ajax/view-all-not-action-taken-lead_post.php' + param
        },
        'columnDefs': [{
            "targets": [0],
            "className": "text-center"
        }],
        "order": [
            [1, 'asc']
        ],
        'columns': columns


    });
    GenerateLeadAnalytics();
}

function GenerateLeadAnalytics() {
    $.ajax({
        url: "ajax/generate-lead-analytics.php",
        type: "POST",
        data: $("#export_fillter_form").serialize(),
        success: function (data) {
            document.getElementById("lead_analytics").innerHTML = data;
        },
    });
}

function initPhone(inputId, hiddenId, storedNumber = "", storedCountryCode = "") {
    var input = document.querySelector(inputId);

    // Determine initial country from storedCountryCode
    var initialCountry = "in"; // default
    if (storedCountryCode) {
        var dialCode = storedCountryCode.replace("+", "");
        initialCountry = window.intlTelInputGlobals.getCountryData().find(function (c) {
            return c.dialCode === dialCode;
        })?.iso2 || "in";
    }

    // Destroy previous instance if exists
    if (input.intlTelInputInstance) {
        input.intlTelInputInstance.destroy();
    }

    // Initialize intl-tel-input
    var iti = window.intlTelInput(input, {
        initialCountry: initialCountry,
        separateDialCode: true,
        utilsScript: "../assets/plugins/intl-tel-input-master/utils.js",
    });

    // If stored number exists, set it
    if (storedNumber) {
        input.value = storedNumber;
    }

    // Set hidden field with selected dial code
    document.querySelector(hiddenId).value = "+" + iti.getSelectedCountryData().dialCode;

    // Update hidden field on country change
    input.addEventListener("countrychange", function () {
        document.querySelector(hiddenId).value =
            "+" + iti.getSelectedCountryData().dialCode;
    });
}


function validISNumber(basic) {
  const input = event.target;
  let value = input.value;

  value = value.replace(/[^0-9.]/g, ''); // Remove non-numeric characters

  input.value = value;
}

function email_check(customer_email) {
  var regex =
    /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  if (!regex.test(customer_email)) {
    return false;
  } else {
    return true;
  }
}

function validaphone(phone) {
  var regex = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
  if (!regex.test(phone)) {
    return false;
  } else {
    return true;
  }
}


function OpenModal_AddLead() {

  $('#lead_form')[0].reset();
  $("#assinged_to_div").css("display", "none");
  $("#Branch").select2({
    placeholder: "Select Center"
  });
  $("#Branch").select2("val", "");
  $("#Branch").select2({
    dropdownParent: $("#add_lead_form_modal")
  });


  $("#BusinessName").select2({
    placeholder: "Select Business Name"
  });
  $("#BusinessName").select2("val", "");
  $("#BusinessName").select2({
    dropdownParent: $("#add_lead_form_modal")
  });


  $("#Services").select2({
    placeholder: "Select Course"
  });
  $("#Services").select2("val", "");
  $("#Services").select2({
    dropdownParent: $("#add_lead_form_modal")
  });

  $("#LeadSource").select2({
    placeholder: "Select Lead Source"
  });
  $("#LeadSource").select2("val", "");
  $("#LeadSource").select2({
    dropdownParent: $("#add_lead_form_modal")
  });

  $("#LeadStatus").select2({
    placeholder: "Select Lead Status"
  });
  $("#LeadStatus").select2("val", "");
  $("#LeadStatus").select2({
    dropdownParent: $("#add_lead_form_modal")
  });

  $("#add_lead_form_modal").modal("show");
  $("#lead_form_btn").html("Add");
  $("#AddLeadHeading").html("Add Lead");
  $("#form_action").val("Add");
  $("#form_id").val(-1);
  let center_id = $("#Branch").val();
  if(center_id != ''){
    GetCenterUserDropDown(center_id);
  }
}

function GetCenterUserDropDown(BranchID) {
  $.post("ajax/get_center_user_dropdown.php",
    {
      BranchID: BranchID
    },
    function (data, status) {
      document.getElementById("AssignedTo").innerHTML = data;
      $("#assinged_to_div").css("display", "block");
      $("#AssignedTo").select2({
        placeholder: "Select Assigned To"
      });
      $("#AssignedTo").select2("val", "");
      $("#AssignedTo").select2({
        dropdownParent: $("#add_lead_form_modal")
      });
    });
}


function AddLead() {
  var Branch = $("#Branch").val();

  if (Branch == "") {
    ProductAlert("Please Select Branch.");
    return false;
  }

  // var CompanyName = $("#CompanyName").val();

  // if (CompanyName == "") {
  //   ProductAlert("Please Enter Company Name.");
  //   return false;
  // }

  var BusinessName = $("#BusinessName").val();

  if (BusinessName == "") {
    ProductAlert("Please Select Type of Business.");
    return false;
  }

  var Services = $("#Services").val();

  if (Services == "") {
    ProductAlert("Please Select Services.");
    return false;
  }

  //  var ServiceCost = $("#ServiceCost").val();

  // if (ServiceCost == "") {
  //   ProductAlert("Please Select Service Cost.");
  //   return false;
  // }

  var ContactPersonName = $("#ContactPersonName").val();

  if (ContactPersonName == "") {
    ProductAlert("Please Enter Contact Person Name.");
    return false;
  }


  // var ContactPersonEmail = $("#ContactPersonEmail").val();

  // if (email_check(ContactPersonEmail) == "") {
  //   ProductAlert("Please Enter Valid Email.");
  //   return false;
  // }

  // var ContactPersonPhoneNumber = $("#ContactPersonPhoneNumber").val();

  // if (validaphone(ContactPersonPhoneNumber) == "") {
  //   ProductAlert("Please Enter Valid Phone Number.");
  //   return false;
  // }


  var AssignedTo = $("#AssignedTo").val();

  if (AssignedTo == "") {
    ProductAlert("Please Select AssignedTo.");
    return false;
  }

  var LeadSource = $("#LeadSource").val();

  if (LeadSource == "") {
    ProductAlert("Please Select Lead Source.");
    return false;
  }

  var status = $("#status").val();

  if (status == "") {
    ProductAlert("Please Select Lead Status.");
    return false;
  }


  $("#lead_form_btn").html("Please Wait..");
  $.ajax({
    url: "action/lead-form-action.php",
    type: "POST",
    data: $("#lead_form").serialize(),
    success: function (data) {
      var response = JSON.parse(data);
      ProductAlert(response.message);
      if (response.error == false) {
        $('#all_leads').DataTable().ajax.reload();
        $("#add_telecaller_lead_form_modal").modal("hide");
        $("#lead_form_btn").html("Submit");
        $('#lead_form')[0].reset();
        // setInterval(function () {
        //   location.reload();
        // }, 500);
      }
      else {
        $("#lead_form_btn").html("Submit");
      }
    },
  });
  return false;

}

function EditManageLead_modal(LeadID) {

  $("#AddLeadHeading").html("Update Lead Detaiils");
  $("#lead_form_btn").html("Update");

  $.post("ajax/get-lead-details.php", {
    LeadID: LeadID
  },
    function (data, status) {
      var response = JSON.parse(data);
      console.log(response.data.LeadSource);
      if (response.error == false) {
        $("#assinged_to_div").css("display", "block");
        $("#Branch").select2({
          placeholder: "Select Center/Branch"
        });
        $("#Branch").select2("val", response.data.BranchID);
        $("#Branch").select2({
          dropdownParent: $("#add_lead_form_modal")
        });

        $("#CompanyName").val(response.data.CompanyName);
        $("#BusinessName").select2({
          placeholder: "Select Business"
        });
        $("#BusinessName").select2("val", response.data.TypeofBusiness);
        $("#BusinessName").select2({
          dropdownParent: $("#add_lead_form_modal")
        });

       $("#Services").select2({
            placeholder: "Select Business",
            dropdownParent: $("#add_lead_form_modal"),
            width: "100%"
        });

        let services = response.data.Services; // "4,3,1"

        services = services.split(",").map(String);

        $("#Services").val(services).trigger("change");


        $("#ServiceCost").val(response.data.ServiceCost);
        $("#ContactPersonName").val(response.data.ContactPersonName);
        $("#ContactPersonEmail").val(response.data.ContactPersonEmail);
        // $("#ContactPersonPhoneNumber").val(response.data.ContactPersonPhoneNumber);
        // $("#ContactPersonAlternativeNo").val(response.data.ContactPersonAlternativeNo);
        initPhone("#ContactPersonPhoneNumber", "#primary_country_code", response.data.ContactPersonPhoneNumber, response.data.PrimaryDialCode);
        initPhone("#ContactPersonAlternativeNo", "#secondary_country_code", response.data.ContactPersonAlternativeNo, response.data.SecondaryDialCode);
        $("#Website").val(response.data.Website);
        $("#Country").val(response.data.Country);
        $("#State").val(response.data.State);
        $("#City").val(response.data.City);
        $("#Address").val(response.data.Address);
        $("#AssignedTo").val(response.data.AssignedTo);


           setTimeout(function () {
            $("#AssignedTo").val(response.data.AssignedTo).trigger('change');
            $("#Country").val(response.data.Country).trigger('change');
            $("#State").val(response.data.State).trigger('change');

          }, 500);

          $("#LeadDate").val(response.data.LeadDate);
          $("#LeadSource").val(response.data.LeadSource);
          $("#LeadStatus").val(response.data.Status);

        $("#form_id").val(LeadID);
        $("#form_action").val("Update");
        $("#lead_form_btn").html("Update Lead");
      }
    });
  $("#add_lead_form_modal").modal("show");
}

function OpenModal_QuickChangeAssignment(Lead_ID) {
  $("#Assignment_lead_id").val(Lead_ID);
  $("#quick_change_assignment_modal").modal("show");
  $("#QuickAssignmentBtn").html("Update");
  $("#QuickAssignmentHeading").html("Change Assignment & Status");
}

function OpenModal_ChangeAssignment() {
  $("#user_name").select2({
    placeholder: "Select User"
  });
  $("#user_name").select2("val", "");
  $("#user_name").select2({
    dropdownParent: $("#change_assignment_modal")
  });

  $("#lead_status").select2({
    placeholder: "Select Status"
  });
  $("#lead_status").select2("val", "");
  $("#lead_status").select2({
    dropdownParent: $("#change_assignment_modal")
  });


  $("#change_assignment_modal").modal("show");
  $("#AssignmentBtn").html("Update");
  $("#AssignmentHeading").html("Change Assignment & Status");
}

function AddUpdateAssignment() {
  var user_name = $("#user_name").val();

  if (user_name == "") {
    ProductAlert("Please Select Assigned To");
    return false;
  }

  var lead_status = $("#lead_status").val();

  if (lead_status == "") {
    ProductAlert("Please Select Status.");
    return false;
  }

  var lead_remark = $("#lead_remark").val();

  if (lead_remark == "") {
    ProductAlert("Please Enter Remark");
    return false;
  }


  $("#AssignmentBtn").html("Please Wait..");
  $.ajax({
    url: "action/change-assignment-status.php",
    type: "POST",
    data: $("#lead_assignment_form").serialize(),
    success: function (data) {
      var response = JSON.parse(data);
      ProductAlert(response.message);
      if (response.error == false) {
        $("#change_assignment_modal").modal("hide");
        $("#AssignmentBtn").html("Update");
        $('#lead_assignment_form')[0].reset();
        setInterval(function () {
          location.reload();
        }, 500);
      } else {
        $("#AssignmentBtn").html("Update");
      }
    },
  });
  return false;

}
