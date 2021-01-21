# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: honeycode
using AWS.Compat
using AWS.UUIDs

"""
    BatchCreateTableRows()

 The BatchCreateTableRows API allows you to create one or more rows at the end of a table in a workbook. The API allows you to specify the values to set in some or all of the columns in the new rows.   If a column is not explicitly set in a specific row, then the column level formula specified in the table will be applied to the new row. If there is no column level formula but the last row of the table has a formula, then that formula will be copied down to the new row. If there is no column level formula and no formula in the last row of the table, then that column will be left blank for the new rows. 

# Required Parameters
- `rowsToCreate`:  The list of rows to create at the end of the table. Each item in this list needs to have a batch item id to uniquely identify the element in the request and the cells to create for that row. You need to specify at least one item in this list.   Note that if one of the column ids in any of the rows in the request does not exist in the table, then the request fails and no updates are made to the table. 
- `tableId`: The ID of the table where the new rows are being added.  If a table with the specified ID could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook where the new rows are being added.  If a workbook with the specified ID could not be found, this API throws ResourceNotFoundException. 

# Optional Parameters
- `clientRequestToken`:  The request token for performing the batch create operation. Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error like a failed network connection, you can retry the call with the same request token. The service ensures that if the first call using that request token is successfully performed, the second call will not perform the operation again.   Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests spanning hours or days. 
"""
batch_create_table_rows(rowsToCreate, tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/batchcreate", Dict{String, Any}("rowsToCreate"=>rowsToCreate); aws_config=aws_config)
batch_create_table_rows(rowsToCreate, tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/batchcreate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("rowsToCreate"=>rowsToCreate), args)); aws_config=aws_config)

"""
    BatchDeleteTableRows()

 The BatchDeleteTableRows API allows you to delete one or more rows from a table in a workbook. You need to specify the ids of the rows that you want to delete from the table. 

# Required Parameters
- `rowIds`:  The list of row ids to delete from the table. You need to specify at least one row id in this list.   Note that if one of the row ids provided in the request does not exist in the table, then the request fails and no rows are deleted from the table. 
- `tableId`: The ID of the table where the rows are being deleted.  If a table with the specified id could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook where the rows are being deleted.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

# Optional Parameters
- `clientRequestToken`:  The request token for performing the delete action. Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error like a failed network connection, you can retry the call with the same request token. The service ensures that if the first call using that request token is successfully performed, the second call will not perform the action again.   Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests spanning hours or days. 
"""
batch_delete_table_rows(rowIds, tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/batchdelete", Dict{String, Any}("rowIds"=>rowIds); aws_config=aws_config)
batch_delete_table_rows(rowIds, tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/batchdelete", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("rowIds"=>rowIds), args)); aws_config=aws_config)

"""
    BatchUpdateTableRows()

 The BatchUpdateTableRows API allows you to update one or more rows in a table in a workbook.   You can specify the values to set in some or all of the columns in the table for the specified rows. If a column is not explicitly specified in a particular row, then that column will not be updated for that row. To clear out the data in a specific cell, you need to set the value as an empty string (\"\"). 

# Required Parameters
- `rowsToUpdate`:  The list of rows to update in the table. Each item in this list needs to contain the row id to update along with the map of column id to cell values for each column in that row that needs to be updated. You need to specify at least one row in this list, and for each row, you need to specify at least one column to update.   Note that if one of the row or column ids in the request does not exist in the table, then the request fails and no updates are made to the table. 
- `tableId`: The ID of the table where the rows are being updated.  If a table with the specified id could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook where the rows are being updated.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

# Optional Parameters
- `clientRequestToken`:  The request token for performing the update action. Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error like a failed network connection, you can retry the call with the same request token. The service ensures that if the first call using that request token is successfully performed, the second call will not perform the action again.   Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests spanning hours or days. 
"""
batch_update_table_rows(rowsToUpdate, tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/batchupdate", Dict{String, Any}("rowsToUpdate"=>rowsToUpdate); aws_config=aws_config)
batch_update_table_rows(rowsToUpdate, tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/batchupdate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("rowsToUpdate"=>rowsToUpdate), args)); aws_config=aws_config)

"""
    BatchUpsertTableRows()

 The BatchUpsertTableRows API allows you to upsert one or more rows in a table. The upsert operation takes a filter expression as input and evaluates it to find matching rows on the destination table. If matching rows are found, it will update the cells in the matching rows to new values specified in the request. If no matching rows are found, a new row is added at the end of the table and the cells in that row are set to the new values specified in the request.   You can specify the values to set in some or all of the columns in the table for the matching or newly appended rows. If a column is not explicitly specified for a particular row, then that column will not be updated for that row. To clear out the data in a specific cell, you need to set the value as an empty string (\"\"). 

# Required Parameters
- `rowsToUpsert`:  The list of rows to upsert in the table. Each item in this list needs to have a batch item id to uniquely identify the element in the request, a filter expression to find the rows to update for that element and the cell values to set for each column in the upserted rows. You need to specify at least one item in this list.   Note that if one of the filter formulas in the request fails to evaluate because of an error or one of the column ids in any of the rows does not exist in the table, then the request fails and no updates are made to the table. 
- `tableId`: The ID of the table where the rows are being upserted.  If a table with the specified id could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook where the rows are being upserted.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

# Optional Parameters
- `clientRequestToken`:  The request token for performing the update action. Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error like a failed network connection, you can retry the call with the same request token. The service ensures that if the first call using that request token is successfully performed, the second call will not perform the action again.   Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests spanning hours or days. 
"""
batch_upsert_table_rows(rowsToUpsert, tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/batchupsert", Dict{String, Any}("rowsToUpsert"=>rowsToUpsert); aws_config=aws_config)
batch_upsert_table_rows(rowsToUpsert, tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/batchupsert", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("rowsToUpsert"=>rowsToUpsert), args)); aws_config=aws_config)

"""
    DescribeTableDataImportJob()

 The DescribeTableDataImportJob API allows you to retrieve the status and details of a table data import job. 

# Required Parameters
- `jobId`: The ID of the job that was returned by the StartTableDataImportJob request.  If a job with the specified id could not be found, this API throws ResourceNotFoundException. 
- `tableId`: The ID of the table into which data was imported.  If a table with the specified id could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook into which data was imported.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

"""
describe_table_data_import_job(jobId, tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("GET", "/workbooks/$(workbookId)/tables/$(tableId)/import/$(jobId)"; aws_config=aws_config)
describe_table_data_import_job(jobId, tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("GET", "/workbooks/$(workbookId)/tables/$(tableId)/import/$(jobId)", args; aws_config=aws_config)

"""
    GetScreenData()

 The GetScreenData API allows retrieval of data from a screen in a Honeycode app. The API allows setting local variables in the screen to filter, sort or otherwise affect what will be displayed on the screen. 

# Required Parameters
- `appId`: The ID of the app that contains the screem.
- `screenId`: The ID of the screen.
- `workbookId`: The ID of the workbook that contains the screen.

# Optional Parameters
- `maxResults`:  The number of results to be returned on a single page. Specify a number between 1 and 100. The maximum value is 100.   This parameter is optional. If you don't specify this parameter, the default page size is 100. 
- `nextToken`:  This parameter is optional. If a nextToken is not specified, the API returns the first page of data.   Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API will throw ValidationException. 
- `variables`:  Variables are optional and are needed only if the screen requires them to render correctly. Variables are specified as a map where the key is the name of the variable as defined on the screen. The value is an object which currently has only one property, rawValue, which holds the value of the variable to be passed to the screen. 
"""
get_screen_data(appId, screenId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/screendata", Dict{String, Any}("appId"=>appId, "screenId"=>screenId, "workbookId"=>workbookId); aws_config=aws_config)
get_screen_data(appId, screenId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/screendata", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("appId"=>appId, "screenId"=>screenId, "workbookId"=>workbookId), args)); aws_config=aws_config)

"""
    InvokeScreenAutomation()

 The InvokeScreenAutomation API allows invoking an action defined in a screen in a Honeycode app. The API allows setting local variables, which can then be used in the automation being invoked. This allows automating the Honeycode app interactions to write, update or delete data in the workbook. 

# Required Parameters
- `appId`: The ID of the app that contains the screen automation.
- `automationId`: The ID of the automation action to be performed.
- `screenId`: The ID of the screen that contains the screen automation.
- `workbookId`: The ID of the workbook that contains the screen automation.

# Optional Parameters
- `clientRequestToken`:  The request token for performing the automation action. Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error like a failed network connection, you can retry the call with the same request token. The service ensures that if the first call using that request token is successfully performed, the second call will return the response of the previous call rather than performing the action again.   Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests spanning hours or days. 
- `rowId`:  The row ID for the automation if the automation is defined inside a block with source or list. 
- `variables`:  Variables are specified as a map where the key is the name of the variable as defined on the screen. The value is an object which currently has only one property, rawValue, which holds the value of the variable to be passed to the screen. Any variables defined in a screen are required to be passed in the call. 
"""
invoke_screen_automation(appId, automationId, screenId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/apps/$(appId)/screens/$(screenId)/automations/$(automationId)"; aws_config=aws_config)
invoke_screen_automation(appId, automationId, screenId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/apps/$(appId)/screens/$(screenId)/automations/$(automationId)", args; aws_config=aws_config)

"""
    ListTableColumns()

 The ListTableColumns API allows you to retrieve a list of all the columns in a table in a workbook. 

# Required Parameters
- `tableId`: The ID of the table whose columns are being retrieved.  If a table with the specified id could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook that contains the table whose columns are being retrieved.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

# Optional Parameters
- `nextToken`:  This parameter is optional. If a nextToken is not specified, the API returns the first page of data.   Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API will throw ValidationException. 
"""
list_table_columns(tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("GET", "/workbooks/$(workbookId)/tables/$(tableId)/columns"; aws_config=aws_config)
list_table_columns(tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("GET", "/workbooks/$(workbookId)/tables/$(tableId)/columns", args; aws_config=aws_config)

"""
    ListTableRows()

 The ListTableRows API allows you to retrieve a list of all the rows in a table in a workbook. 

# Required Parameters
- `tableId`: The ID of the table whose rows are being retrieved.  If a table with the specified id could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook that contains the table whose rows are being retrieved.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

# Optional Parameters
- `maxResults`: The maximum number of rows to return in each page of the results.
- `nextToken`:  This parameter is optional. If a nextToken is not specified, the API returns the first page of data.   Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API will throw ValidationException. 
- `rowIds`:  This parameter is optional. If one or more row ids are specified in this list, then only the specified row ids are returned in the result. If no row ids are specified here, then all the rows in the table are returned. 
"""
list_table_rows(tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/list"; aws_config=aws_config)
list_table_rows(tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/list", args; aws_config=aws_config)

"""
    ListTables()

 The ListTables API allows you to retrieve a list of all the tables in a workbook. 

# Required Parameters
- `workbookId`: The ID of the workbook whose tables are being retrieved.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

# Optional Parameters
- `maxResults`: The maximum number of tables to return in each page of the results.
- `nextToken`:  This parameter is optional. If a nextToken is not specified, the API returns the first page of data.   Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API will throw ValidationException. 
"""
list_tables(workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("GET", "/workbooks/$(workbookId)/tables"; aws_config=aws_config)
list_tables(workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("GET", "/workbooks/$(workbookId)/tables", args; aws_config=aws_config)

"""
    QueryTableRows()

 The QueryTableRows API allows you to use a filter formula to query for specific rows in a table. 

# Required Parameters
- `filterFormula`: An object that represents a filter formula along with the id of the context row under which the filter function needs to evaluate.
- `tableId`: The ID of the table whose rows are being queried.  If a table with the specified id could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook whose table rows are being queried.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

# Optional Parameters
- `maxResults`: The maximum number of rows to return in each page of the results.
- `nextToken`:  This parameter is optional. If a nextToken is not specified, the API returns the first page of data.   Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API will throw ValidationException. 
"""
query_table_rows(filterFormula, tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/query", Dict{String, Any}("filterFormula"=>filterFormula); aws_config=aws_config)
query_table_rows(filterFormula, tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/rows/query", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("filterFormula"=>filterFormula), args)); aws_config=aws_config)

"""
    StartTableDataImportJob()

 The StartTableDataImportJob API allows you to start an import job on a table. This API will only return the id of the job that was started. To find out the status of the import request, you need to call the DescribeTableDataImportJob API. 

# Required Parameters
- `clientRequestToken`:  The request token for performing the update action. Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error like a failed network connection, you can retry the call with the same request token. The service ensures that if the first call using that request token is successfully performed, the second call will not perform the action again.   Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests spanning hours or days. 
- `dataFormat`:  The format of the data that is being imported. Currently the only option supported is \"DELIMITED_TEXT\". 
- `dataSource`:  The source of the data that is being imported. The size of source must be no larger than 100 MB. Source must have no more than 100,000 cells and no more than 1,000 rows. 
- `importOptions`:  The options for customizing this import request. 
- `tableId`: The ID of the table where the rows are being imported.  If a table with the specified id could not be found, this API throws ResourceNotFoundException. 
- `workbookId`: The ID of the workbook where the rows are being imported.  If a workbook with the specified id could not be found, this API throws ResourceNotFoundException. 

"""
start_table_data_import_job(clientRequestToken, dataFormat, dataSource, importOptions, tableId, workbookId; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/import", Dict{String, Any}("clientRequestToken"=>clientRequestToken, "dataFormat"=>dataFormat, "dataSource"=>dataSource, "importOptions"=>importOptions); aws_config=aws_config)
start_table_data_import_job(clientRequestToken, dataFormat, dataSource, importOptions, tableId, workbookId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = honeycode("POST", "/workbooks/$(workbookId)/tables/$(tableId)/import", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientRequestToken"=>clientRequestToken, "dataFormat"=>dataFormat, "dataSource"=>dataSource, "importOptions"=>importOptions), args)); aws_config=aws_config)
