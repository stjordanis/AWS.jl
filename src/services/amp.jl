# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: amp
using AWS.Compat
using AWS.UUIDs

"""
    CreateWorkspace()

Creates a new AMP workspace.

# Optional Parameters
- `alias`: An optional user-assigned alias for this workspace. This alias is for user reference and does not need to be unique.
- `clientToken`: Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
"""
create_workspace(; aws_config::AbstractAWSConfig=global_aws_config()) = amp("POST", "/workspaces", Dict{String, Any}("clientToken"=>string(uuid4())); aws_config=aws_config)
create_workspace(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amp("POST", "/workspaces", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    DeleteWorkspace()

Deletes an AMP workspace.

# Required Parameters
- `workspaceId`: The ID of the workspace to delete.

# Optional Parameters
- `clientToken`: Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
"""
delete_workspace(workspaceId; aws_config::AbstractAWSConfig=global_aws_config()) = amp("DELETE", "/workspaces/$(workspaceId)", Dict{String, Any}("clientToken"=>string(uuid4())); aws_config=aws_config)
delete_workspace(workspaceId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amp("DELETE", "/workspaces/$(workspaceId)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    DescribeWorkspace()

Describes an existing AMP workspace.

# Required Parameters
- `workspaceId`: The ID of the workspace to describe.

"""
describe_workspace(workspaceId; aws_config::AbstractAWSConfig=global_aws_config()) = amp("GET", "/workspaces/$(workspaceId)"; aws_config=aws_config)
describe_workspace(workspaceId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amp("GET", "/workspaces/$(workspaceId)", args; aws_config=aws_config)

"""
    ListWorkspaces()

Lists all AMP workspaces, including workspaces being created or deleted.

# Optional Parameters
- `alias`: Optional filter for workspace alias. Only the workspaces with aliases that begin with this value will be returned.
- `maxResults`: Maximum results to return in response (default=100, maximum=1000).
- `nextToken`: Pagination token to request the next page in a paginated list. This token is obtained from the output of the previous ListWorkspaces request.
"""
list_workspaces(; aws_config::AbstractAWSConfig=global_aws_config()) = amp("GET", "/workspaces"; aws_config=aws_config)
list_workspaces(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amp("GET", "/workspaces", args; aws_config=aws_config)

"""
    UpdateWorkspaceAlias()

Updates an AMP workspace alias.

# Required Parameters
- `workspaceId`: The ID of the workspace being updated.

# Optional Parameters
- `alias`: The new alias of the workspace.
- `clientToken`: Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
"""
update_workspace_alias(workspaceId; aws_config::AbstractAWSConfig=global_aws_config()) = amp("POST", "/workspaces/$(workspaceId)/alias", Dict{String, Any}("clientToken"=>string(uuid4())); aws_config=aws_config)
update_workspace_alias(workspaceId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amp("POST", "/workspaces/$(workspaceId)/alias", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientToken"=>string(uuid4())), args)); aws_config=aws_config)
