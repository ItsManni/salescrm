var _ProductName = "";
fetch('../config/config.json')
  .then(response => response.json())
  .then(configData => {
    // Accessing product name in JavaScript
    _ProductName = configData.product._ProductName;
  });
function TathastuAlert(message) {
  alertify.alert(_ProductName, message).set({ transition: "fade" });
}
function ProductAlert(message) {
  alertify.alert(_ProductName, message).set({ transition: "fade" });
}
function appendQueryString(selectedValue)
{
  // Get the current URL
  const url = new URL(window.location.href);

  // Set the 'q' parameter to the selected value
  url.searchParams.set('center', selectedValue);

  // Redirect to the new URL, which will reload the page
  window.location.href = url;
}


function refreshTable(targetTableId) {
    // 1. Get the API instance of the table
    var table = $(targetTableId).DataTable();

    // 2. reload(callback, resetPaging)
    // Setting second parameter to 'false' is the secret.
    // it updates data but keeps the user on their current page/scroll.
    table.ajax.reload(null, false);

    // 3. Optional: refresh your analytics if you have them
    if (typeof GenerateLeadAnalytics === "function") {
        GenerateLeadAnalytics();
    }
}