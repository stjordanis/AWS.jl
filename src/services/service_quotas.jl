# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: service_quotas
using AWS.Compat
using AWS.UUIDs

"""
    AssociateServiceQuotaTemplate()

Associates your quota request template with your organization. When a new account is created in your organization, the quota increase requests in the template are automatically applied to the account. You can add a quota increase request for any adjustable quota to your template.

"""
associate_service_quota_template(; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("AssociateServiceQuotaTemplate"; aws_config=aws_config)
associate_service_quota_template(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("AssociateServiceQuotaTemplate", args; aws_config=aws_config)

"""
    DeleteServiceQuotaIncreaseRequestFromTemplate()

Deletes the quota increase request for the specified quota from your quota request template.

# Required Parameters
- `AwsRegion`: The AWS Region.
- `QuotaCode`: The quota identifier.
- `ServiceCode`: The service identifier.

"""
delete_service_quota_increase_request_from_template(AwsRegion, QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("DeleteServiceQuotaIncreaseRequestFromTemplate", Dict{String, Any}("AwsRegion"=>AwsRegion, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
delete_service_quota_increase_request_from_template(AwsRegion, QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("DeleteServiceQuotaIncreaseRequestFromTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AwsRegion"=>AwsRegion, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    DisassociateServiceQuotaTemplate()

Disables your quota request template. After a template is disabled, the quota increase requests in the template are not applied to new accounts in your organization. Disabling a quota request template does not apply its quota increase requests.

"""
disassociate_service_quota_template(; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("DisassociateServiceQuotaTemplate"; aws_config=aws_config)
disassociate_service_quota_template(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("DisassociateServiceQuotaTemplate", args; aws_config=aws_config)

"""
    GetAWSDefaultServiceQuota()

Retrieves the default value for the specified quota. The default value does not reflect any quota increases.

# Required Parameters
- `QuotaCode`: The quota identifier.
- `ServiceCode`: The service identifier.

"""
get_awsdefault_service_quota(QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetAWSDefaultServiceQuota", Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
get_awsdefault_service_quota(QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetAWSDefaultServiceQuota", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    GetAssociationForServiceQuotaTemplate()

Retrieves the status of the association for the quota request template.

"""
get_association_for_service_quota_template(; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetAssociationForServiceQuotaTemplate"; aws_config=aws_config)
get_association_for_service_quota_template(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetAssociationForServiceQuotaTemplate", args; aws_config=aws_config)

"""
    GetRequestedServiceQuotaChange()

Retrieves information about the specified quota increase request.

# Required Parameters
- `RequestId`: The ID of the quota increase request.

"""
get_requested_service_quota_change(RequestId; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetRequestedServiceQuotaChange", Dict{String, Any}("RequestId"=>RequestId); aws_config=aws_config)
get_requested_service_quota_change(RequestId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetRequestedServiceQuotaChange", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("RequestId"=>RequestId), args)); aws_config=aws_config)

"""
    GetServiceQuota()

Retrieves the applied quota value for the specified quota. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.

# Required Parameters
- `QuotaCode`: The quota identifier.
- `ServiceCode`: The service identifier.

"""
get_service_quota(QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetServiceQuota", Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
get_service_quota(QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetServiceQuota", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    GetServiceQuotaIncreaseRequestFromTemplate()

Retrieves information about the specified quota increase request in your quota request template.

# Required Parameters
- `AwsRegion`: The AWS Region.
- `QuotaCode`: The quota identifier.
- `ServiceCode`: The service identifier.

"""
get_service_quota_increase_request_from_template(AwsRegion, QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetServiceQuotaIncreaseRequestFromTemplate", Dict{String, Any}("AwsRegion"=>AwsRegion, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
get_service_quota_increase_request_from_template(AwsRegion, QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("GetServiceQuotaIncreaseRequestFromTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AwsRegion"=>AwsRegion, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    ListAWSDefaultServiceQuotas()

Lists the default values for the quotas for the specified AWS service. A default value does not reflect any quota increases.

# Required Parameters
- `ServiceCode`: The service identifier.

# Optional Parameters
- `MaxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, if any, make another call with the token returned from this call.
- `NextToken`: The token for the next page of results.
"""
list_awsdefault_service_quotas(ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListAWSDefaultServiceQuotas", Dict{String, Any}("ServiceCode"=>ServiceCode); aws_config=aws_config)
list_awsdefault_service_quotas(ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListAWSDefaultServiceQuotas", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    ListRequestedServiceQuotaChangeHistory()

Retrieves the quota increase requests for the specified service.

# Optional Parameters
- `MaxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, if any, make another call with the token returned from this call.
- `NextToken`: The token for the next page of results.
- `ServiceCode`: The service identifier.
- `Status`: The status of the quota increase request.
"""
list_requested_service_quota_change_history(; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListRequestedServiceQuotaChangeHistory"; aws_config=aws_config)
list_requested_service_quota_change_history(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListRequestedServiceQuotaChangeHistory", args; aws_config=aws_config)

"""
    ListRequestedServiceQuotaChangeHistoryByQuota()

Retrieves the quota increase requests for the specified quota.

# Required Parameters
- `QuotaCode`: The quota identifier.
- `ServiceCode`: The service identifier.

# Optional Parameters
- `MaxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, if any, make another call with the token returned from this call.
- `NextToken`: The token for the next page of results.
- `Status`: The status value of the quota increase request.
"""
list_requested_service_quota_change_history_by_quota(QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListRequestedServiceQuotaChangeHistoryByQuota", Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
list_requested_service_quota_change_history_by_quota(QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListRequestedServiceQuotaChangeHistoryByQuota", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    ListServiceQuotaIncreaseRequestsInTemplate()

Lists the quota increase requests in the specified quota request template.

# Optional Parameters
- `AwsRegion`: The AWS Region.
- `MaxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, if any, make another call with the token returned from this call.
- `NextToken`: The token for the next page of results.
- `ServiceCode`: The service identifier.
"""
list_service_quota_increase_requests_in_template(; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListServiceQuotaIncreaseRequestsInTemplate"; aws_config=aws_config)
list_service_quota_increase_requests_in_template(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListServiceQuotaIncreaseRequestsInTemplate", args; aws_config=aws_config)

"""
    ListServiceQuotas()

Lists the applied quota values for the specified AWS service. For some quotas, only the default values are available. If the applied quota value is not available for a quota, the quota is not retrieved.

# Required Parameters
- `ServiceCode`: The service identifier.

# Optional Parameters
- `MaxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, if any, make another call with the token returned from this call.
- `NextToken`: The token for the next page of results.
"""
list_service_quotas(ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListServiceQuotas", Dict{String, Any}("ServiceCode"=>ServiceCode); aws_config=aws_config)
list_service_quotas(ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListServiceQuotas", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    ListServices()

Lists the names and codes for the services integrated with Service Quotas.

# Optional Parameters
- `MaxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, if any, make another call with the token returned from this call.
- `NextToken`: The token for the next page of results.
"""
list_services(; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListServices"; aws_config=aws_config)
list_services(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListServices", args; aws_config=aws_config)

"""
    ListTagsForResource()

Returns a list of the tags assigned to the specified applied quota.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) for the applied quota for which you want to list tags. You can get this information by using the Service Quotas console, or by listing the quotas using the list-service-quotas AWS CLI command or the ListServiceQuotas AWS API operation.

"""
list_tags_for_resource(ResourceARN; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
list_tags_for_resource(ResourceARN, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), args)); aws_config=aws_config)

"""
    PutServiceQuotaIncreaseRequestIntoTemplate()

Adds a quota increase request to your quota request template.

# Required Parameters
- `AwsRegion`: The AWS Region.
- `DesiredValue`: The new, increased value for the quota.
- `QuotaCode`: The quota identifier.
- `ServiceCode`: The service identifier.

"""
put_service_quota_increase_request_into_template(AwsRegion, DesiredValue, QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("PutServiceQuotaIncreaseRequestIntoTemplate", Dict{String, Any}("AwsRegion"=>AwsRegion, "DesiredValue"=>DesiredValue, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
put_service_quota_increase_request_into_template(AwsRegion, DesiredValue, QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("PutServiceQuotaIncreaseRequestIntoTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AwsRegion"=>AwsRegion, "DesiredValue"=>DesiredValue, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    RequestServiceQuotaIncrease()

Submits a quota increase request for the specified quota.

# Required Parameters
- `DesiredValue`: The new, increased value for the quota.
- `QuotaCode`: The quota identifier.
- `ServiceCode`: The service identifier.

"""
request_service_quota_increase(DesiredValue, QuotaCode, ServiceCode; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("RequestServiceQuotaIncrease", Dict{String, Any}("DesiredValue"=>DesiredValue, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
request_service_quota_increase(DesiredValue, QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("RequestServiceQuotaIncrease", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DesiredValue"=>DesiredValue, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    TagResource()

Adds tags to the specified applied quota. You can include one or more tags to add to the quota.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) for the applied quota. You can get this information by using the Service Quotas console, or by listing the quotas using the list-service-quotas AWS CLI command or the ListServiceQuotas AWS API operation.
- `Tags`: The tags that you want to add to the resource.

"""
tag_resource(ResourceARN, Tags; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceARN, Tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes tags from the specified applied quota. You can specify one or more tags to remove.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) for the applied quota that you want to untag. You can get this information by using the Service Quotas console, or by listing the quotas using the list-service-quotas AWS CLI command or the ListServiceQuotas AWS API operation.
- `TagKeys`: The keys of the tags that you want to remove from the resource.

"""
untag_resource(ResourceARN, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
untag_resource(ResourceARN, TagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = service_quotas("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), args)); aws_config=aws_config)
