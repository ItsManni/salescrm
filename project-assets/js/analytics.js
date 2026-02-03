function GenerateBDEActivity() {
    $.ajax({
        url: "ajax/get-bde-activity.php",
        type: "POST",
        data: $("#bde_filter_form").serialize(),
        success: function(data) {
            $("#bde_activity_table").html(data);
        }
    });
}

// Load BDE dropdown when branch changes (if dynamic)
$.ajax({
    url: "ajax/get_center_user_dropdown.php",
    type: "POST",
    data: { BranchID: 1 }, // Replace with dynamic branch value
    success: function(data) {
        $("#bdeSelect").html(data);
    }
});

// Trigger activity table load on BDE select
$("#bdeSelect").on("change", function() {
    GenerateBDEActivity();
});