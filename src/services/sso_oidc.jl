# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: sso_oidc
using AWS.Compat
using AWS.UUIDs

"""
    CreateToken()

Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.

# Required Parameters
- `clientId`: The unique identifier string for each client. This value should come from the persisted result of the RegisterClient API.
- `clientSecret`: A secret string generated for the client. This value should come from the persisted result of the RegisterClient API.
- `deviceCode`: Used only when calling this API for the device code grant type. This short-term code is used to identify this authentication attempt. This should come from an in-memory reference to the result of the StartDeviceAuthorization API.
- `grantType`: Supports grant types for authorization code, refresh token, and device code request.

# Optional Parameters
- `code`: The authorization code received from the authorization service. This parameter is required to perform an authorization grant request to get access to a token.
- `redirectUri`: The location of the application that will receive the authorization code. Users authorize the service to send the request to this location.
- `refreshToken`: The token used to obtain an access token in the event that the access token is invalid or expired. This token is not issued by the service.
- `scope`: The list of scopes that is defined by the client. Upon authorization, this list is used to restrict permissions when granting an access token.
"""
create_token(clientId, clientSecret, deviceCode, grantType; aws_config::AbstractAWSConfig=global_aws_config()) = sso_oidc("POST", "/token", Dict{String, Any}("clientId"=>clientId, "clientSecret"=>clientSecret, "deviceCode"=>deviceCode, "grantType"=>grantType); aws_config=aws_config)
create_token(clientId, clientSecret, deviceCode, grantType, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = sso_oidc("POST", "/token", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientId"=>clientId, "clientSecret"=>clientSecret, "deviceCode"=>deviceCode, "grantType"=>grantType), args)); aws_config=aws_config)

"""
    RegisterClient()

Registers a client with AWS SSO. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.

# Required Parameters
- `clientName`: The friendly name of the client.
- `clientType`: The type of client. The service supports only public as a client type. Anything other than public will be rejected by the service.

# Optional Parameters
- `scopes`: The list of scopes that are defined by the client. Upon authorization, this list is used to restrict permissions when granting an access token.
"""
register_client(clientName, clientType; aws_config::AbstractAWSConfig=global_aws_config()) = sso_oidc("POST", "/client/register", Dict{String, Any}("clientName"=>clientName, "clientType"=>clientType); aws_config=aws_config)
register_client(clientName, clientType, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = sso_oidc("POST", "/client/register", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientName"=>clientName, "clientType"=>clientType), args)); aws_config=aws_config)

"""
    StartDeviceAuthorization()

Initiates device authorization by requesting a pair of verification codes from the authorization service.

# Required Parameters
- `clientId`: The unique identifier string for the client that is registered with AWS SSO. This value should come from the persisted result of the RegisterClient API operation.
- `clientSecret`: A secret string that is generated for the client. This value should come from the persisted result of the RegisterClient API operation.
- `startUrl`: The URL for the AWS SSO user portal. For more information, see Using the User Portal in the AWS Single Sign-On User Guide.

"""
start_device_authorization(clientId, clientSecret, startUrl; aws_config::AbstractAWSConfig=global_aws_config()) = sso_oidc("POST", "/device_authorization", Dict{String, Any}("clientId"=>clientId, "clientSecret"=>clientSecret, "startUrl"=>startUrl); aws_config=aws_config)
start_device_authorization(clientId, clientSecret, startUrl, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = sso_oidc("POST", "/device_authorization", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientId"=>clientId, "clientSecret"=>clientSecret, "startUrl"=>startUrl), args)); aws_config=aws_config)
