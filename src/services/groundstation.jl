# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: groundstation
using AWS.Compat
using AWS.UUIDs

"""
    CancelContact()

Cancels a contact with a specified contact ID.

# Required Parameters
- `contactId`: UUID of a contact.

"""
cancel_contact(contactId; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/contact/$(contactId)"; aws_config=aws_config)
cancel_contact(contactId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/contact/$(contactId)", args; aws_config=aws_config)

"""
    CreateConfig()

Creates a Config with the specified configData parameters. Only one type of configData can be specified.

# Required Parameters
- `configData`: Parameters of a Config.
- `name`: Name of a Config.

# Optional Parameters
- `tags`: Tags assigned to a Config.
"""
create_config(configData, name; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/config", Dict{String, Any}("configData"=>configData, "name"=>name); aws_config=aws_config)
create_config(configData, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/config", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("configData"=>configData, "name"=>name), args)); aws_config=aws_config)

"""
    CreateDataflowEndpointGroup()

Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.

# Required Parameters
- `endpointDetails`: Endpoint details of each endpoint in the dataflow endpoint group.

# Optional Parameters
- `tags`: Tags of a dataflow endpoint group.
"""
create_dataflow_endpoint_group(endpointDetails; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/dataflowEndpointGroup", Dict{String, Any}("endpointDetails"=>endpointDetails); aws_config=aws_config)
create_dataflow_endpoint_group(endpointDetails, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/dataflowEndpointGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("endpointDetails"=>endpointDetails), args)); aws_config=aws_config)

"""
    CreateMissionProfile()

Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.

# Required Parameters
- `dataflowEdges`: A list of lists of ARNs. Each list of ARNs is an edge, with a from Config and a to Config.
- `minimumViableContactDurationSeconds`: Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.
- `name`: Name of a mission profile.
- `trackingConfigArn`: ARN of a tracking Config.

# Optional Parameters
- `contactPostPassDurationSeconds`: Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.
- `contactPrePassDurationSeconds`: Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.
- `tags`: Tags assigned to a mission profile.
"""
create_mission_profile(dataflowEdges, minimumViableContactDurationSeconds, name, trackingConfigArn; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/missionprofile", Dict{String, Any}("dataflowEdges"=>dataflowEdges, "minimumViableContactDurationSeconds"=>minimumViableContactDurationSeconds, "name"=>name, "trackingConfigArn"=>trackingConfigArn); aws_config=aws_config)
create_mission_profile(dataflowEdges, minimumViableContactDurationSeconds, name, trackingConfigArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/missionprofile", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("dataflowEdges"=>dataflowEdges, "minimumViableContactDurationSeconds"=>minimumViableContactDurationSeconds, "name"=>name, "trackingConfigArn"=>trackingConfigArn), args)); aws_config=aws_config)

"""
    DeleteConfig()

Deletes a Config.

# Required Parameters
- `configId`: UUID of a Config.
- `configType`: Type of a Config.

"""
delete_config(configId, configType; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/config/$(configType)/$(configId)"; aws_config=aws_config)
delete_config(configId, configType, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/config/$(configType)/$(configId)", args; aws_config=aws_config)

"""
    DeleteDataflowEndpointGroup()

Deletes a dataflow endpoint group.

# Required Parameters
- `dataflowEndpointGroupId`: UUID of a dataflow endpoint group.

"""
delete_dataflow_endpoint_group(dataflowEndpointGroupId; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/dataflowEndpointGroup/$(dataflowEndpointGroupId)"; aws_config=aws_config)
delete_dataflow_endpoint_group(dataflowEndpointGroupId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/dataflowEndpointGroup/$(dataflowEndpointGroupId)", args; aws_config=aws_config)

"""
    DeleteMissionProfile()

Deletes a mission profile.

# Required Parameters
- `missionProfileId`: UUID of a mission profile.

"""
delete_mission_profile(missionProfileId; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/missionprofile/$(missionProfileId)"; aws_config=aws_config)
delete_mission_profile(missionProfileId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/missionprofile/$(missionProfileId)", args; aws_config=aws_config)

"""
    DescribeContact()

Describes an existing contact.

# Required Parameters
- `contactId`: UUID of a contact.

"""
describe_contact(contactId; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/contact/$(contactId)"; aws_config=aws_config)
describe_contact(contactId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/contact/$(contactId)", args; aws_config=aws_config)

"""
    GetConfig()

Returns Config information. Only one Config response can be returned.

# Required Parameters
- `configId`: UUID of a Config.
- `configType`: Type of a Config.

"""
get_config(configId, configType; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/config/$(configType)/$(configId)"; aws_config=aws_config)
get_config(configId, configType, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/config/$(configType)/$(configId)", args; aws_config=aws_config)

"""
    GetDataflowEndpointGroup()

Returns the dataflow endpoint group.

# Required Parameters
- `dataflowEndpointGroupId`: UUID of a dataflow endpoint group.

"""
get_dataflow_endpoint_group(dataflowEndpointGroupId; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/dataflowEndpointGroup/$(dataflowEndpointGroupId)"; aws_config=aws_config)
get_dataflow_endpoint_group(dataflowEndpointGroupId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/dataflowEndpointGroup/$(dataflowEndpointGroupId)", args; aws_config=aws_config)

"""
    GetMinuteUsage()

Returns the number of minutes used by account.

# Required Parameters
- `month`: The month being requested, with a value of 1-12.
- `year`: The year being requested, in the format of YYYY.

"""
get_minute_usage(month, year; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/minute-usage", Dict{String, Any}("month"=>month, "year"=>year); aws_config=aws_config)
get_minute_usage(month, year, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/minute-usage", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("month"=>month, "year"=>year), args)); aws_config=aws_config)

"""
    GetMissionProfile()

Returns a mission profile.

# Required Parameters
- `missionProfileId`: UUID of a mission profile.

"""
get_mission_profile(missionProfileId; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/missionprofile/$(missionProfileId)"; aws_config=aws_config)
get_mission_profile(missionProfileId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/missionprofile/$(missionProfileId)", args; aws_config=aws_config)

"""
    GetSatellite()

Returns a satellite.

# Required Parameters
- `satelliteId`: UUID of a satellite.

"""
get_satellite(satelliteId; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/satellite/$(satelliteId)"; aws_config=aws_config)
get_satellite(satelliteId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/satellite/$(satelliteId)", args; aws_config=aws_config)

"""
    ListConfigs()

Returns a list of Config objects.

# Optional Parameters
- `maxResults`: Maximum number of Configs returned.
- `nextToken`: Next token returned in the request of a previous ListConfigs call. Used to get the next page of results.
"""
list_configs(; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/config"; aws_config=aws_config)
list_configs(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/config", args; aws_config=aws_config)

"""
    ListContacts()

Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn. 

# Required Parameters
- `endTime`: End time of a contact.
- `startTime`: Start time of a contact.
- `statusList`: Status of a contact reservation.

# Optional Parameters
- `groundStation`: Name of a ground station.
- `maxResults`: Maximum number of contacts returned.
- `missionProfileArn`: ARN of a mission profile.
- `nextToken`: Next token returned in the request of a previous ListContacts call. Used to get the next page of results.
- `satelliteArn`: ARN of a satellite.
"""
list_contacts(endTime, startTime, statusList; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/contacts", Dict{String, Any}("endTime"=>endTime, "startTime"=>startTime, "statusList"=>statusList); aws_config=aws_config)
list_contacts(endTime, startTime, statusList, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/contacts", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("endTime"=>endTime, "startTime"=>startTime, "statusList"=>statusList), args)); aws_config=aws_config)

"""
    ListDataflowEndpointGroups()

Returns a list of DataflowEndpoint groups.

# Optional Parameters
- `maxResults`: Maximum number of dataflow endpoint groups returned.
- `nextToken`: Next token returned in the request of a previous ListDataflowEndpointGroups call. Used to get the next page of results.
"""
list_dataflow_endpoint_groups(; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/dataflowEndpointGroup"; aws_config=aws_config)
list_dataflow_endpoint_groups(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/dataflowEndpointGroup", args; aws_config=aws_config)

"""
    ListGroundStations()

Returns a list of ground stations. 

# Optional Parameters
- `maxResults`: Maximum number of ground stations returned.
- `nextToken`: Next token that can be supplied in the next call to get the next page of ground stations.
- `satelliteId`: Satellite ID to retrieve on-boarded ground stations.
"""
list_ground_stations(; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/groundstation"; aws_config=aws_config)
list_ground_stations(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/groundstation", args; aws_config=aws_config)

"""
    ListMissionProfiles()

Returns a list of mission profiles.

# Optional Parameters
- `maxResults`: Maximum number of mission profiles returned.
- `nextToken`: Next token returned in the request of a previous ListMissionProfiles call. Used to get the next page of results.
"""
list_mission_profiles(; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/missionprofile"; aws_config=aws_config)
list_mission_profiles(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/missionprofile", args; aws_config=aws_config)

"""
    ListSatellites()

Returns a list of satellites.

# Optional Parameters
- `maxResults`: Maximum number of satellites returned.
- `nextToken`: Next token that can be supplied in the next call to get the next page of satellites.
"""
list_satellites(; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/satellite"; aws_config=aws_config)
list_satellites(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/satellite", args; aws_config=aws_config)

"""
    ListTagsForResource()

Returns a list of tags for a specified resource.

# Required Parameters
- `resourceArn`: ARN of a resource.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    ReserveContact()

Reserves a contact using specified parameters.

# Required Parameters
- `endTime`: End time of a contact.
- `groundStation`: Name of a ground station.
- `missionProfileArn`: ARN of a mission profile.
- `satelliteArn`: ARN of a satellite
- `startTime`: Start time of a contact.

# Optional Parameters
- `tags`: Tags assigned to a contact.
"""
reserve_contact(endTime, groundStation, missionProfileArn, satelliteArn, startTime; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/contact", Dict{String, Any}("endTime"=>endTime, "groundStation"=>groundStation, "missionProfileArn"=>missionProfileArn, "satelliteArn"=>satelliteArn, "startTime"=>startTime); aws_config=aws_config)
reserve_contact(endTime, groundStation, missionProfileArn, satelliteArn, startTime, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/contact", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("endTime"=>endTime, "groundStation"=>groundStation, "missionProfileArn"=>missionProfileArn, "satelliteArn"=>satelliteArn, "startTime"=>startTime), args)); aws_config=aws_config)

"""
    TagResource()

Assigns a tag to a resource.

# Required Parameters
- `resourceArn`: ARN of a resource tag.
- `tags`: Tags assigned to a resource.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Deassigns a resource tag.

# Required Parameters
- `resourceArn`: ARN of a resource.
- `tagKeys`: Keys of a resource tag.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateConfig()

Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.

# Required Parameters
- `configData`: Parameters of a Config.
- `configId`: UUID of a Config.
- `configType`: Type of a Config.
- `name`: Name of a Config.

"""
update_config(configData, configId, configType, name; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("PUT", "/config/$(configType)/$(configId)", Dict{String, Any}("configData"=>configData, "name"=>name); aws_config=aws_config)
update_config(configData, configId, configType, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("PUT", "/config/$(configType)/$(configId)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("configData"=>configData, "name"=>name), args)); aws_config=aws_config)

"""
    UpdateMissionProfile()

Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.

# Required Parameters
- `missionProfileId`: UUID of a mission profile.

# Optional Parameters
- `contactPostPassDurationSeconds`: Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.
- `contactPrePassDurationSeconds`: Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.
- `dataflowEdges`: A list of lists of ARNs. Each list of ARNs is an edge, with a from Config and a to Config.
- `minimumViableContactDurationSeconds`: Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.
- `name`: Name of a mission profile.
- `trackingConfigArn`: ARN of a tracking Config.
"""
update_mission_profile(missionProfileId; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("PUT", "/missionprofile/$(missionProfileId)"; aws_config=aws_config)
update_mission_profile(missionProfileId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = groundstation("PUT", "/missionprofile/$(missionProfileId)", args; aws_config=aws_config)
