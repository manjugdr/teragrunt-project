output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_id
}

output "node_group_role_arns" {
  description = "IAM roles associated with the node group"
  value       = module.eks.node_group_role_arns
}

output "kubeconfig" {
  description = "Kubeconfig file for the EKS cluster"
  value       = module.eks.kubeconfig
}
