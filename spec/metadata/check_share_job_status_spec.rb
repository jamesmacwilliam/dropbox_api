describe DropboxApi::Metadata::CheckShareJobStatus do
  def build_metadata_hash(attrs = {})
    {
      ".tag" => "complete",
      "access_inheritance" => {
        ".tag" => "inherit"
      },
      "access_type" => {
        ".tag" => "owner"
      },
      "is_inside_team_folder" => false,
      "is_team_folder" => false,
      "link_metadata" => {
        "audience_options" => [
          {
            ".tag" => "public"
          },
          {
            ".tag" => "team"
          },
          {
            ".tag" => "members"
          }
        ],
        "current_audience" => {
          ".tag" => "public"
        },
        "link_permissions" => [
          {
            "action" => {
              ".tag" => "change_audience"
            },
            "allow" => true
          }
        ],
        "password_protected" => false,
        "url" => ""
      },
      "name" => "dir",
      "path_lower" => "/dir",
      "permissions" => [],
      "policy" => {
        "acl_update_policy" => {
          ".tag" => "owner"
        },
        "member_policy" => {
          ".tag" => "anyone"
        },
        "resolved_member_policy" => {
          ".tag" => "team"
        },
        "shared_link_policy" => {
          ".tag" => "anyone"
        }
      },
      "preview_url" => "https://www.dropbox.com/scl/fo/fir9vjelf",
      "shared_folder_id" => "84528192421",
      "time_invited" => "2016-01-20T00:00:00Z"
    }.merge(attrs)
  end

  it "can be initialized from a hash" do
    metadata = DropboxApi::Metadata::CheckShareJobStatus.new(build_metadata_hash)
    expect(metadata).to be_a(DropboxApi::Metadata::CheckShareJobStatus)
    expect(metadata.name).to eq("dir")
    expect(metadata.status).to eq("complete")
    expect(metadata.shared_folder_id).to eq("84528192421")
  end
end
