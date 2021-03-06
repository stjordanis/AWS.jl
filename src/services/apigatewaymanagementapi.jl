# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: apigatewaymanagementapi
using AWS.Compat
using AWS.UUIDs

"""
    DeleteConnection()

Delete the connection with the provided id.

# Required Parameters
- `connectionId`: 

"""
delete_connection(connectionId; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("DELETE", "/@connections/$(connectionId)"; aws_config=aws_config)
delete_connection(connectionId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("DELETE", "/@connections/$(connectionId)", args; aws_config=aws_config)

"""
    GetConnection()

Get information about the connection with the provided id.

# Required Parameters
- `connectionId`: 

"""
get_connection(connectionId; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("GET", "/@connections/$(connectionId)"; aws_config=aws_config)
get_connection(connectionId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("GET", "/@connections/$(connectionId)", args; aws_config=aws_config)

"""
    PostToConnection()

Sends the provided data to the specified connection.

# Required Parameters
- `Data`: The data to be sent to the client specified by its connection id.
- `connectionId`: The identifier of the connection that a specific client is using.

"""
post_to_connection(Data, connectionId; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("POST", "/@connections/$(connectionId)", Dict{String, Any}("Data"=>Data); aws_config=aws_config)
post_to_connection(Data, connectionId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("POST", "/@connections/$(connectionId)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Data"=>Data), args)); aws_config=aws_config)
