output "endpoint" {
  value = aws_eks_cluster.aws_eks.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.aws_eks.certificate_authority[0].data
}

output "eks_sgid" {
  value = aws_eks_cluster.aws_eks.vpc_config[0].cluster_security_group_id
}
