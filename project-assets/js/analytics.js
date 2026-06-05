function GenerateBDEActivity() {
    var bdeValue = $("#bdeSelect").val();
    var startDate = $("#filter_start_date").val();
    var endDate = $("#filter_end_date").val();

    // Guard: If no BDE is selected, stop here
    if (!bdeValue) {
        $("#bde_activity_table").html('<p class="text-center text-muted py-4">Please select a BDE executive above to look up analytics history.</p>');
        return;
    }

    // Guard: If one date is chosen but the other is empty, wait for the user to finish
    if ((startDate !== "" && endDate === "") || (startDate === "" && endDate !== "")) {
        return;
    }

    // Show a clean loading state
    $("#bde_activity_table").html(`
        <div class="text-center py-5">
            <div class="spinner-border text-primary" role="status"><span class="visually-hidden">Loading...</span></div>
            <p class="mt-2 text-secondary small mb-0">Processing data filters...</p>
        </div>
    `);

    $.ajax({
        url: "ajax/get-bde-activity.php",
        type: "POST",
        data: $("#bde_filter_form").serialize(),
        success: function(data) {
            $("#bde_activity_table").html(data);
        },
        error: function(xhr, status, error) {
            console.error("AJAX Error: ", error);
            $("#bde_activity_table").html('<p class="text-center text-danger py-4">Error loading activity data.</p>');
        }
    });
}

// Populate BDE dropdown on page load
$.ajax({
    url: "ajax/get_center_user_dropdown.php",
    type: "POST",
    data: { BranchID: 1 },
    success: function(data) {
        $("#bdeSelect").html('<option value="">-- Choose Executive --</option>' + data);
    }
});

// Event Triggers
$(document).ready(function() {
    $("#bdeSelect").on("change", function() {
        GenerateBDEActivity();
    });

    $("#filter_start_date, #filter_end_date").on("change", function() {
        GenerateBDEActivity();
    });

    // Reset date picker values and refresh standard feed
    $("#btnClearFilters").on("click", function() {
        $("#filter_start_date").val("");
        $("#filter_end_date").val("");
        GenerateBDEActivity();
    });
});