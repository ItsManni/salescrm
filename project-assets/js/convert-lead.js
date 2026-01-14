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
            'url': 'ajax/view-all-convert-lead_post.php' + param
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