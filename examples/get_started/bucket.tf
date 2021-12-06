resource "couchbasecapella_bucket" "bucket" {
  cluster_id          = couchbasecapella_cluster.cluster.id
  name                = var.bucket_name
  memory_quota        = "256"
  replicas            = "1"
  conflict_resolution = "seqno"
}
