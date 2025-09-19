project_name: "test_remote"
# constant: Test {
#   value: "Yash"
#   export: override_required
# }

constant: connection {
  value: "imported_project_connection"
  export: override_required
}

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
