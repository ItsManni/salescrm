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
      data: 'Name'
    },
    {
      data: 'Course_Mode'
    },
    {
      data: 'Mobile_Email'
    },
    {
      data: 'Status'
    },
    {
      data: 'AssignedTo'
    },
    {
      data: 'ViewDetails'
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
      'url': 'ajax/view-all-lead_post.php' + param
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

function SearchFillterTelecallerLead(UserType) {
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

  var fillter_status = document.getElementById("fillter_status");
  if (fillter_status !== null) {
    var fillter_status = document.getElementById("fillter_status").value;
    param = param + "&fillter_status=" + fillter_status;
  }

  var fillter_center = document.getElementById("center_id").value;
  param = param + "&BranchID="+fillter_center;

  var columns = [
    {
      "data": "id",
      render: function (data, type, row, meta) {
        return meta.row + meta.settings._iDisplayStart + 1;
      }
    },
    {
      data: 'Name'
    },
    {
      data: 'Course_Mode'
    },
    {
      data: 'Mobile_Email'
    },
    {
      data: 'Status'
    },
    {
      data: 'AssignedTo'
    },
    {
      data: 'ViewDetails'
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
      'url': 'ajax/view-all-telecaller-lead_post.php' + param
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
  $("#Center_name").select2({
    placeholder: "Select Center"
  });
  $("#Center_name").select2("val", "");
  $("#Center_name").select2({
    dropdownParent: $("#add_lead_form_modal")
  });


  $("#State").select2({
    placeholder: "Select State"
  });
  $("#State").select2("val", "");
  $("#State").select2({
    dropdownParent: $("#add_lead_form_modal")
  });


  $("#courses").select2({
    placeholder: "Select Course"
  });
  $("#courses").select2("val", "");
  $("#courses").select2({
    dropdownParent: $("#add_lead_form_modal")
  });

  $("#LeadSource").select2({
    placeholder: "Select Lead Source"
  });
  $("#LeadSource").select2("val", "");
  $("#LeadSource").select2({
    dropdownParent: $("#add_lead_form_modal")
  });

  $("#status").select2({
    placeholder: "Select Lead Status"
  });
  $("#status").select2("val", "");
  $("#status").select2({
    dropdownParent: $("#add_lead_form_modal")
  });

  $("#add_lead_form_modal").modal("show");
  $("#lead_form_btn").html("Add");
  $("#AddLeadHeading").html("Add Lead");
  $("#form_action").val("Add");
  $("#form_id").val(-1);
  let center_id = $("#Center_name").val();
  if(center_id != ''){
    GetCenterUserDropDown(center_id);
  }
}

function OpenModal_AddTelecallerLead() {
  $('#lead_form')[0].reset();
  $("#assinged_to_div").css("display", "none");
  $("#Center_name").select2({
    placeholder: "Select Center"
  });
  $("#Center_name").select2("val", "");
  $("#Center_name").select2({
    dropdownParent: $("#add_telecaller_lead_form_modal")
  });


  $("#State").select2({
    placeholder: "Select State"
  });
  $("#State").select2("val", "");
  $("#State").select2({
    dropdownParent: $("#add_telecaller_lead_form_modal")
  });


  $("#courses").select2({
    placeholder: "Select Course"
  });
  $("#courses").select2("val", "");
  $("#courses").select2({
    dropdownParent: $("#add_telecaller_lead_form_modal")
  });


  $("#add_telecaller_lead_form_modal").modal("show");
  $("#lead_form_btn").html("Add");
  $("#AddLeadHeading").html("Add Lead");
  $("#form_action").val("Add");
  $("#form_id").val(-1);
  let center_id = $("#Center_name").val();
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

  var CompanyName = $("#CompanyName").val();

  if (CompanyName == "") {
    ProductAlert("Please Enter Company Name.");
    return false;
  }

  var Services = $("#Services").val();

  if (Services == "") {
    ProductAlert("Please Select Services.");
    return false;
  }

   var ServiceCost = $("#ServiceCost").val();

  if (ServiceCost == "") {
    ProductAlert("Please Select Service Cost.");
    return false;
  }

  var Name = $("#Name").val();

  if (Name == "") {
    ProductAlert("Please Enter Contact Person Name.");
    return false;
  }


  // var email = $("#email").val();

  // if (email_check(email) == "") {
  //   ProductAlert("Please Enter Valid Email.");
  //   return false;
  // }

  var phone = $("#phone").val();

  if (validaphone(phone) == "") {
    ProductAlert("Please Enter Valid Phone Number.");
    return false;
  }

  var courses = $("#courses").val();

  if (courses == "") {
    ProductAlert("Please Select Course.");
    return false;
  }

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
      }
      else {
        $("#lead_form_btn").html("Submit");
      }
    },
  });
  return false;

}

function AddTelecallerLead() {
  var Center_name = $("#Center_name").val();

  if (Center_name == "") {
    ProductAlert("Please Select Center/Branch.");
    return false;
  }

  var name = $("#name").val();

  if (name == "") {
    ProductAlert("Please Enter Name.");
    return false;
  }
  // var email = $("#email").val();

  // if (email_check(email) == "") {
  //   ProductAlert("Please Enter Valid Email.");
  //   return false;
  // }

  var phone = $("#phone").val();

  if (validaphone(phone) == "") {
    ProductAlert("Please Enter Valid Phone Number.");
    return false;
  }

  var courses = $("#courses").val();

  if (courses == "") {
    ProductAlert("Please Select Course");
    return false;
  }



  $("#lead_form_btn").html("Please Wait..");
  $.ajax({
    url: "action/telecaller-lead-form-action.php",
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
      }
      else {
        $("#lead_form_btn").html("Submit");
      }
    },
  });
  return false;

}

function OpenModal_QuickChangeAssignment(Lead_ID) {
  $("#Assignment_lead_id").val(Lead_ID);
  $("#quick_change_assignment_modal").modal("show");
  $("#QuickAssignmentBtn").html("Update");
  $("#QuickAssignmentHeading").html("Change Assignment & Status");
}
function OpenModal_QuickChangeTelecallerLeadStatus(Lead_ID,Status) {
  $("#Assignment_lead_id").val(Lead_ID);
  $("#lead_status").val(Status);
  $("#quick_change_status_modal").modal("show");
  $("#QuickAssignmentBtn").html("Update");
  $("#QuickAssignmentHeading").html("Change Status");
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

function AddUpdateTelecallerAssignment() {

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
    url: "action/telecaller-change-assignment-status.php",
    type: "POST",
    data: $("#lead_assignment_form").serialize(),
    success: function (data) {
      var response = JSON.parse(data);
      ProductAlert(response.message);
      if (response.error == false) {
        $("#quick_change_status_modal").modal("hide");
        $("#AssignmentBtn").html("Update");
        $('#lead_assignment_form')[0].reset();
        $('#all_leads').DataTable().ajax.reload();
      } else {
        $("#AssignmentBtn").html("Update");
      }
    },
  });
  return false;

}


function AddLeadRemark() {

  var leadremark_input = $("#leadremark_input").val();

  if (leadremark_input == "") {
    ProductAlert("Please Enter Remark.");
    return false;
  }

  $.ajax({
    url: "action/add_lead_remark_action.php",
    type: "POST",
    data: $("#lead_remark_form").serialize(),
    success: function (data) {
      var response = JSON.parse(data);
      ProductAlert(response.message);
      if (response.error == false) {
        setInterval(function () {
          location.reload();
        }, 1500);
      }
    },
  });
  return false;
}

function AddTelecallerLeadRemark() {

  var leadremark_input = $("#leadremark_input").val();

  if (leadremark_input == "") {
    ProductAlert("Please Enter Remark.");
    return false;
  }

  $.ajax({
    url: "action/add_telecaller_lead_remark_action.php",
    type: "POST",
    data: $("#lead_remark_form").serialize(),
    success: function (data) {
      var response = JSON.parse(data);
      ProductAlert(response.message);
      if (response.error == false) {
        setInterval(function () {
          location.reload();
        }, 1500);
      }
    },
  });
  return false;
}

function EditManageLead_modal(LeadID) {

  $("#AddLeadHeading").html("Update Lead Detaiils");

  $.post("ajax/get-lead-details.php", {
    LeadID: LeadID
  },
    function (data, status) {
      var response = JSON.parse(data);
      console.log(response.data.LeadSource);
      if (response.error == false) {
        $("#assinged_to_div").css("display", "block");
        $("#Center_name").select2({
          placeholder: "Select Center/Branch"
        });
        $("#Center_name").select2("val", response.data.BranchID);
        $("#Center_name").select2({
          dropdownParent: $("#add_lead_form_modal")
        });

        $("#name").val(response.data.Name);
        $("#email").val(response.data.Email);
        $("#phone").val(response.data.PhoneNumber);

        // $("#State").select2({
        //   placeholder: "Select State"
        // });
        // $("#State").select2("val", response.data.State);
        // $("#State").select2({
        //   dropdownParent: $("#add_lead_form_modal")
        // });

        $("#State").val(response.data.State).trigger('change');

        $("#student_city").val(response.data.City);
        $("#address").val(response.data.Address);

        var mode = response.data.Mode.toLowerCase();
        var mode_id = "mode_"+mode;
        document.getElementById(mode_id).checked = true;


          // $("#courses").select2({
          //   placeholder: "Select Courses"
          // });
          // $("#courses").select2("val", response.data.Course);
          // $("#courses").select2({
          //   dropdownParent: $("#add_lead_form_modal")
          // });

          $("#courses").val(response.data.Course).trigger('change');

          // $("#AssignedTo").select2({
          //   placeholder: "Select Assigned To"
          // });
          // $("#AssignedTo").select2("val", response.data.AssignedTo);
          // $("#AssignedTo").select2({
          //   dropdownParent: $("#add_lead_form_modal")
          // });

          setTimeout(function () {
            $("#AssignedTo").val(response.data.AssignedTo).trigger('change');
          }, 500);



          $("#LeadSource").val(response.data.LeadSource);
          $("#status").val(response.data.Status);


        $("#form_action").val("Update");
        $("#form_id").val(LeadID);
        $("#lead_form_btn").html("Update Lead");
      }
    });
  $("#add_lead_form_modal").modal("show");
}
function EditTelecallerLead_modal(LeadID) {

  $("#AddLeadHeading").html("Update Telecaller Lead Detaiils");

  $.post("ajax/get-telecaller-lead-details.php", {
    LeadID: LeadID
  },
    function (data, status) {
      var response = JSON.parse(data);
      if (response.error == false) {

        $("#Center_name").select2({
          placeholder: "Select Center/Branch"
        });
       $("#Center_name").val(response.data.BranchID).trigger("change");
        $("#Center_name").select2({
          dropdownParent: $("#add_telecaller_lead_form_modal")
        });

        $("#name").val(response.data.Name);
        $("#email").val(response.data.Email);
        $("#phone").val(response.data.PhoneNumber);

        $("#State").select2({
          placeholder: "Select State"
        });
        $("#State").val(response.data.State).trigger("change");
        $("#State").select2({
          dropdownParent: $("#add_telecaller_lead_form_modal")
        });

        $("#student_city").val(response.data.City);
        $("#address").val(response.data.Address);

        var mode = response.data.Mode.toLowerCase();
        var mode_id = "mode_"+mode;
        document.getElementById(mode_id).checked = true;


          $("#courses").select2({
            placeholder: "Select Courses"
          });
          $("#courses").val(response.data.Course).trigger("change");
          $("#courses").select2({
            dropdownParent: $("#add_telecaller_lead_form_modal")
          });

        $("#form_action").val("Update");
        $("#form_id").val(LeadID);
        $("#lead_form_btn").html("Update Lead");
        $("#add_telecaller_lead_form_modal").modal("show");
      }
    });

}
function GenerateLeadAnalytics()
{
    $.ajax({
        url: "ajax/generate-lead-analytics.php",
        type: "POST",
        data: $("#export_fillter_form").serialize(),
        success: function (data) {
            document.getElementById("lead_analytics").innerHTML = data;
        },
    });
}

function AssignTelecallerLeadtoCounsellor(LeadID)
{
  $("#create_lead_telecaller_lead_id").val(LeadID);
  $("#create_lead_confirmation_button").html("Confirm");
  $("#create_lead_assignment_modal_heading").html("Confirm the Lead Creation");
  $("#create_lead_assignment_modal").modal("show");
}

function AddUpdateTelecalle_CreateLeadAction()
{
  $.ajax({
        url: "action/telecaller-lead-to-counsellor-lead.php",
        type: "POST",
        data: $("#create_lead_assignment_form").serialize(),
        success: function (data)
        {
            data = JSON.parse(data);
            ProductAlert(data.message);
            if(data.error == false)
            {
              $("#create_lead_assignment_modal").modal("hide");
              $('#all_leads').DataTable().ajax.reload();
            }

        }
    });
}