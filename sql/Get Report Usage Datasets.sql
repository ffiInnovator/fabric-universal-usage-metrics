SELECT DatasetId, WorkspaceId, DatasetName, WorkspaceName
FROM workspace_datasets
WHERE DatasetName = 'Report Usage Metrics Model' -- old report format
      OR DatasetName = 'Usage Metrics Report' -- new report format
ORDER BY DatasetId;

SELECT DatasetId, WorkspaceId, DatasetName, WorkspaceName
FROM workspace_datasets
WHERE DatasetName = 'Usage Metrics Report' -- new report format
ORDER BY DatasetId;