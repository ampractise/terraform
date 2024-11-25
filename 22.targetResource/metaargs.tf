/*
  depends_on : Handle resources and modulr dependancy that terraform cant do automatically
  count : create that many instances of resourcces
  for_each : accept map or set of string and create instance for each of them
  lifecycle : Allows modification of resources lifecycle
  provider : 

  lifecycle
    - create_before_destroy = true
    - prevent_destroy = true
    - ignore_changes = [val1, val2], or all
    - replace_triggered_by
*/
