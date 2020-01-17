describe DropboxApi::Client, "#check_share_job_status" do
  let(:path_prefix) {
    DropboxScaffoldBuilder.prefix_for(:check_share_job_status)
  }

  before do
    @client = DropboxApi::Client.new
  end

  it "returns complete when the sync has finished", cassette: "check_share_job_status/success" do
    result = @client.check_share_job_status("abc123")
    expect(result).to be_a(DropboxApi::Metadata::CheckShareJobStatus)
    expect(result.status).to eq("complete")
  end

  it "raises an error if the async job cannot be found", :cassette => "check_share_job_status/error" do
    expect {
      @client.check_share_job_status("666")
    }.to raise_error(DropboxApi::Errors::CheckShareJobStatusError)
  end
end
