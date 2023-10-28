SELECT
task_history.* rename state AS task_run_state,
task_versions.state AS task_state,
task_versions.graph_version_created_on,
task_versions.warehouse_name,
task_versions.comment,
task_versions.schedule,
task_versions.predecessors,
task_versions.allow_overlapping_execution,
task_versions.error_integration
FROM snowflake.account_usage.task_history
JOIN snowflake.account_usage.task_versions using (root_task_id, graph_version)
WHERE task_history.ROOT_TASK_ID = 'afb36ccc-. . .-b746f3bf555d'