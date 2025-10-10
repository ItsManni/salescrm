    $(document).ready(function() {
            var i = 1;
            $('#admission_enquiry').dataTable({
                 responsive: true,
                'processing': true,
                'serverSide': true,
                'ordering': false,
                'serverMethod': 'post',
                'ajax': {
                    'url': 'ajax/view-all-website-admission_post.php'
                },
                'columnDefs': [{
                    "targets": [0],
                    "className": "text-center"
                }],
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
                    },
                    {
                        data: 'PaymentStatus'
                    },
                    {
                        data: 'TransactionID'
                    }


                ]


            });
        });


    