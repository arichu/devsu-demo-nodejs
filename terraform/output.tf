output "cluster_endpoint"{
    description = "ENdpoint for EKS control plane"
    value = module.eks.cluster_endpoint
}

output "cluster_security_group_id"{
    description = "Securoty groups ids attached to the cluster control plane"
    value = module.eks.cluster_security_group_id
}

output "ECR_url"{
    description = "The ECR url to upload images"
    value = try(aws_ecr_repository.devsu_block.repository_url, "")
}
