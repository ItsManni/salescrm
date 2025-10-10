
function isValidEmail(email) {
    // Regular expression to check if the email is valid
    var emailRegex = /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/;

    // Test the email against the regular expression
    return emailRegex.test(email);
}

function login() {
    var email = $("#email").val();
    if (!isValidEmail(email)) {
        ProductAlert("Please enter valid email address");
        return false;
    }

    var password = $("#password").val();
    if (password == '') {
        ProductAlert("Please enter password");
        return false;
    }

    var data = $("#form-login").serialize();
    $.ajax({
        type: "POST",
        url: "action/login-action",
        data: data,
        success: function (data) {
            var response = JSON.parse(data);
            if (response.error == false) {
                if (response.UserType == "System Admin") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Counsellor") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "ContentTeam") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Book Dispatch") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Academic Head") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Acountant") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Admission") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Marketing") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Center Manager") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Lead Counsellor") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Batch Manager") {
                    window.location = "../dashboard/admin-dashboard";
                }
                if (response.UserType == "Telecaller") {
                    window.location = "../dashboard/admin-dashboard";
                }
            }
            else {
                ProductAlert(response.message);
            }

        }
    });
}
