module DropboxApi::Endpoints::Sharing
  class CheckShareJobStatus < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/sharing/check_share_job_status".freeze
    ResultType  = DropboxApi::Metadata::CheckShareJobStatus
    ErrorType   = DropboxApi::Errors::CheckShareJobStatusError

    add_endpoint :check_share_job_status do |async_job_id|
      perform_request({
        async_job_id: async_job_id
      })
    end
  end
end
