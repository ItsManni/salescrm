    $(document).ready(function() {
        var i = 1;
        $('#all_invoice').dataTable({
             responsive: true,
            'processing': true,
            'serverSide': true,
            'ordering': false,
            'serverMethod': 'post',
            'ajax': {
                'url': 'ajax/view-all-invoice_post.php'
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
                    data: 'InvoiceNo'
                },
                {
                    data: 'Mode'
                },
                {
                    data: 'Action'
                }


            ]


        });
    });

function IsvalidNumber(basic) {
    const input = event.target;
    let value = input.value;

    value = value.replace(/[^0-9.]/g, ''); // Remove non-numeric characters

    input.value = value;
}

function AddInvoiceNo() {
  $("#form_action").val("add");
  $("#invoice_form")[0].reset();
  $("#add_invoice").modal("show");
  $("#addInvoiceBtn").html("Add");
  $("#InvoiceHeading").html("Add Invoice No");
  $("#form_id").val('-1');
}

function UpdateInvoiceNo_modal(invoice_id) {
    
  $("#addInvoiceBtn").html("Update");
  $("#InvoiceHeading").html("Update Invoice No");

  $.post("action/get_invoice_details.php", {
            ID: invoice_id
        },
        function(data, status) {
            var response = JSON.parse(data);
            if(response.error == false)
            {
                var invoice_no = response.data.InvoiceNo;
                $("#invoice_no").val(invoice_no);
                $("#form_action").val("Update");
                $("#form_id").val(invoice_id);
            }
        });
  $("#add_invoice").modal("show");
}


function AddUpdateInvoiceNoForm()
{
  var invoice_no = $("#invoice_no").val();

  if(invoice_no == ""){
      ProductAlert("Please Enter Invoice No");
      return false;
  }
 
  let myForm = document.getElementById("invoice_form");
  var formData = new FormData(myForm);

  $("#addInvoiceBtn").html("Please Wait..");
  $.ajax({
      url: "action/invoice-form-action.php",
      type: "POST",
      data: formData,
      success: function(data) {
          var response = JSON.parse(data);
          ProductAlert(response.message);
          if (response.error == false) {
              setInterval(function() {
                  location.reload();
              }, 1500);
              $("#addInvoiceBtn").html("Add");
              $('#invoice_form')[0].reset();
          }
      },
    cache: false,
    contentType: false,
    processData: false,
  });
    return false;
  
}

function DeleteInvoiceNo(invoice_id) {
  alertify.confirm(
    _ProductName,
    "Do you really want to delete Inovoice No?",
    function () {
      $.post(
        "action/delete-invoice-no.php",
        {
          ID: invoice_id,
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


    