
function AddLeadStatus()
{
  $("#lead_status_form_action").val("add");
  $("#modal_lead_status").modal("show");
  $("#LeadStatus").val("");
}

function AddTelecallerLeadStatus()
{
  $("#telecaller_lead_status_form_action").val("add");
  $("#modal_telecaller_lead_status").modal("show");
  $("#TelecallerLeadStatus").val("");
}


function UpdateLeadStatus()
{
  var LeadStatus = $("#LeadStatus").val();
  if(LeadStatus == "")
  {
    Alert("Please Enter Status Name");
    return false;
  }
  var LeadColor = $("#LeadColor").val();
  var form_action = $("#lead_status_form_action").val();
  var lead_status_form_id = $("#lead_status_form_id").val();
  final_status = 0;
  if($("#final_status").is(":checked"))
  {
    final_status = 1;
  }
  not_interested_status = 0;
  if($("#not_interested_status").is(":checked"))
  {
    not_interested_status = 1;
  }
  default_status = 0;
  if($("#default_status").is(":checked"))
  {
    default_status = 1;
  }
  var sum_status = final_status+not_interested_status+default_status;
  if(sum_status >= 2)
  {
    ProductAlert("Status can have only one checked value!");
    return false;
  }
  $.post({
      url: 'action/add_update_lead_status.php', // Replace with your server-side script URL
      data:
      {
        "LeadStatus":LeadStatus,
        "LeadColor":LeadColor,
        "form_action":form_action,
        "lead_status_form_id":lead_status_form_id,
        "final_status":final_status,
        "not_interested_status":not_interested_status,
        "default_status":default_status
      },
      success: function(response) {
        var data_response = JSON.parse(response);
        if(data_response.error == false)
        {
          ProductAlert(data_response.message);
          setInterval(function() {
                  location.reload();
              }, 1500);
        }else{
          ProductAlert(data_response.message);
        }
      }
    });
}

function UpdateTelecallerLeadStatus()
{
  var LeadStatus = $("#TelecallerLeadStatus").val();
  if(LeadStatus == "")
  {
    Alert("Please Enter Status Name");
    return false;
  }
  var LeadColor = $("#TelecallerLeadColor").val();
  var form_action = $("#telecaller_lead_status_form_action").val();
  var lead_status_form_id = $("#telecaller_lead_status_form_id").val();
  final_status = 0;
  if($("#telecaller_final_status").is(":checked"))
  {
    final_status = 1;
  }
  not_interested_status = 0;
  if($("#telecaller_not_interested_status").is(":checked"))
  {
    not_interested_status = 1;
  }
  default_status = 0;
  if($("#telecaller_default_status").is(":checked"))
  {
    default_status = 1;
  }
  var sum_status = final_status+not_interested_status+default_status;
  if(sum_status >= 2)
  {
    ProductAlert("Status can have only one checked value!");
    return false;
  }
  $.post({
      url: 'action/add_update_telecaller_lead_status.php', // Replace with your server-side script URL
      data:
      {
        "LeadStatus":LeadStatus,
        "LeadColor":LeadColor,
        "form_action":form_action,
        "lead_status_form_id":lead_status_form_id,
        "final_status":final_status,
        "not_interested_status":not_interested_status,
        "default_status":default_status
      },
      success: function(response) {
        var data_response = JSON.parse(response);
        if(data_response.error == false)
        {
          ProductAlert(data_response.message);
          setInterval(function() {
                  location.reload();
              }, 1500);
        }else{
          ProductAlert(data_response.message);
        }
      }
    });
}

function EditLeadStatus(StatusID,Status_name,FinalStatus,DefaultStatus,NotInterestedStatus,LeadColor)
{
    $("#lead_status_form_action").val("update");
    $("#lead_status_form_id").val(StatusID);
    $("#LeadStatus").val(Status_name);
    $("#LeadColor").val(LeadColor);
    $("#modal_lead_status").modal("show");
    if(FinalStatus == 1)
    {
      $("#final_status").prop("checked", true);
    }
    else
    {
      $("#final_status").prop("checked", false);
    }
    if(DefaultStatus == 1)
    {
      $("#default_status").prop("checked", true);
    }
    else
    {
      $("#default_status").prop("checked", false);
    }
    if(NotInterestedStatus == 1)
    {
      $("#not_interested_status").prop("checked", true);
    }
    else
    {
      $("#not_interested_status").prop("checked", false);
    }
}

function EditTelecallerLeadStatus(StatusID,Status_name,FinalStatus,DefaultStatus,NotInterestedStatus,LeadColor)
{
    $("#telecaller_lead_status_form_action").val("update");
    $("#telecaller_lead_status_form_id").val(StatusID);
    $("#TelecallerLeadStatus").val(Status_name);
    $("#TelecallerLeadColor").val(LeadColor);
    $("#modal_telecaller_lead_status").modal("show");
    if(FinalStatus == 1)
    {
      $("#telecaller_final_status").prop("checked", true);
    }
    else
    {
      $("#telecaller_final_status").prop("checked", false);
    }
    if(DefaultStatus == 1)
    {
      $("#telecaller_default_status").prop("checked", true);
    }
    else
    {
      $("#telecaller_default_status").prop("checked", false);
    }
    if(NotInterestedStatus == 1)
    {
      $("#telecaller_not_interested_status").prop("checked", true);
    }
    else
    {
      $("#telecaller_not_interested_status").prop("checked", false);
    }
}

function AddLeadSource()
{
  $("#lead_source_form_action").val("add");
  $("#modal_lead_source").modal("show");
  $("#SourceName").val("");
}


function UpdateLeadSource()
{
  var SourceName = $("#SourceName").val();
  if(SourceName == "")
  {
    Alert("Please Enter Source Name");
    return false;
  }
  var form_action = $("#lead_source_form_action").val();
  var lead_source_form_id = $("#lead_source_form_id").val();
  $.post({
      url: 'action/add_update_lead_source.php', // Replace with your server-side script URL
      data:
      {
        "SourceName":SourceName,
        "form_action":form_action,
        "lead_source_form_id":lead_source_form_id,
      },
      success: function(response) {
        var data_response = JSON.parse(response);
        if(data_response.error == false)
        {
          ProductAlert(data_response.message);
          setInterval(function() {
                  location.reload();
              }, 1500);
        }else{
          ProductAlert(data_response.message);
        }
      }
    });
}

function EditLeadSource(SourceID,Source_name)
{
    $("#lead_source_form_action").val("update");
    $("#lead_source_form_id").val(SourceID);
    $("#SourceName").val(Source_name);
    $("#modal_lead_source").modal("show");
}


function AddService() {
  $("#service_form_action").val("add");
  $("#modal_service").modal("show");
  $("#ServiceName").val("");
}

function UpdateService() {
  var ServiceName = $("#ServiceName").val();
  if (ServiceName == "") {
    Alert("Please Enter Service Name");
    return false;
  }

  var form_action = $("#service_form_action").val();
  var service_form_id = $("#service_form_id").val();

  $.post({
    url: 'action/add_update_service.php', // Replace with your server-side script URL
    data: {
      "ServiceName": ServiceName,
      "form_action": form_action,
      "service_form_id": service_form_id,
    },
    success: function(response) {
      var data_response = JSON.parse(response);
      if (data_response.error == false) {
        ProductAlert(data_response.message);
        setInterval(function() {
          location.reload();
        }, 1500);
      } else {
        ProductAlert(data_response.message);
      }
    }
  });
}

function EditService(ServiceID, ServiceName) {
  $("#service_form_action").val("update");
  $("#service_form_id").val(ServiceID);
  $("#ServiceName").val(ServiceName);
  $("#modal_service").modal("show");
}


function AddBusinessType() {
    $("#business_type_form_action").val("add");
    $("#modal_business_type").modal("show");
    $("#BusinessName").val(""); // clear input
}

function EditBusinessType(BusinessTypeID, BusinessName) {
    $("#business_type_form_action").val("update");
    $("#business_type_form_id").val(BusinessTypeID);
    $("#BusinessName").val(BusinessName);
    $("#modal_business_type").modal("show");
}

function UpdateBusinessType() {
    var BusinessName = $("#BusinessName").val();
    if (BusinessName === "") {
        Alert("Please enter Business Type Name");
        return false;
    }
    var form_action = $("#business_type_form_action").val();
    var business_type_form_id = $("#business_type_form_id").val();

    $.post({
        url: 'action/add_update_type_of_business.php',
        data: {
            "BusinessName": BusinessName,
            "form_action": form_action,
            "business_type_form_id": business_type_form_id
        },
        success: function(response) {
            var data_response = JSON.parse(response);
            if (!data_response.error) {
                ProductAlert(data_response.message);
                setInterval(function() {
                    location.reload(); // reload after success
                }, 1500);
            } else {
                ProductAlert(data_response.message);
            }
        }
    });
}
