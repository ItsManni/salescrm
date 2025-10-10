    $(document).ready(function() {
            var i = 1;
            $('#enquiry_table').dataTable({
                 responsive: true,
                'processing': true,
                'serverSide': true,
                'ordering': false,
                'serverMethod': 'post',
                'ajax': {
                    'url': 'ajax/view-all-course-form-enquiry_post.php'
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
                        data: 'Name'
                    },
                    {
                        data: 'Mobile_Email'
                    },
                    {
                        data: 'ModeOfClasses'
                    },
                    {
                        data: 'CourseName'
                    }


                ]

            });
        });


    function OpenChangeAssigned(lead_id) {
          $("#assigned_modal").modal('show');

    }

    function ExportCourseEnquiryData() {

        var filter_start_date = $("#filter_start_date").val();

          if(filter_start_date == ""){
              ProductAlert("Please Select Start Date.");
              return false;
          }

       var filter_end_date = $("#filter_end_date").val();

          if(filter_end_date == ""){
              ProductAlert("Please Select End Date.");
              return false;
          }

        $.ajax({
            url: "action/export-course-enquiry.php",
            type: "POST",
            data: $("#export_fillter_form").serialize(),
            success: function (data) {

              var xlsFilePath = './report.xls';

              var anchor = document.createElement("a");
              anchor.href = xlsFilePath;
              anchor.download = 'all-admission-data.xls';
              anchor.click();
            },
        });
        return false;
    }