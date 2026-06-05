<!-- start add modal  -->

    <div class="modal fade" id="quick_add_remark_modal" tabindex="1">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h3 class="modal-title" id="QuickRemarkHeading"></h3>
                <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="lead_remark_form" onsubmit="return false;">

                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Remark <span
                                class="text-danger">*<span></label>
                        <textarea type="text" class="form-control" name="QuickLeadRemark" id="quick_lead_remark"
                            placeholder="Type Remark Here... "></textarea>
                    </div>

                    <input type="hidden" name="LeadID" id="Remark_lead_id" value="">


                    <div class="mt-5 text-center">
                        <button class="btn btn-success text-white" id="QuickRemarkBtn"
                            onclick="AddUpdateQuickRemark()"></button>
                    </div>


                </form>
            </div>
        </div>
    </div>
    </div>

<!-- End End modal  -->