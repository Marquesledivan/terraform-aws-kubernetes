variable "aws_region" {
    description = "Region where Cloud Formation is created"
}

variable "cluster_name" {
    description = "Name of the AWS Kubernetes cluster - will be used to name all created resources"
}

variable "tags" {
    description = "Tags used for the AWS resources created by this template"
    type        = map
}

variable "tags2" {
    description = "Tags in format used for the AWS Autoscaling Group"
    type        = list
}

variable "addons" {
    description = "list of YAML files with Kubernetes addons which should be installed"
    type        = list
}

variable "master_instance_type" {
    description = "Type of instance for master"
}

variable "worker_instance_type" {
    description = "Type of instance for workers"
}

variable "master_subnet_id" {
    description = "The subnet-id to be used for the master instance. Master can be only in single subnet. All subnets have to belong to the same VPC."
}

variable "worker_subnet_ids" {
    description = "The subnet-ids to be used for the worker instances. Workers can be in multiple subnets. Worker subnets can contain also the master subnet. If you want to run workers in different subnet(s) than master you have to tag the subnets with kubernetes.io/cluster/{cluster_name}=shared.  All subnets have to belong to the same VPC."
    type = list
}

variable "min_worker_count" {
    description = "Minimal number of worker nodes"
}

variable "max_worker_count" {
    description = "Maximal number of worker nodes"
}

variable "public_worker" {
  description = "Weither or not the workers should have a public IP"
  default = true
}

variable "ssh_public_key" {
    description = "Path to the pulic part of SSH key which should be used for the instance"
}

variable "hosted_zone" {
    description = "Hosted zone to be used for the alias"
}

variable "hosted_zone_private" {
    description = "Is the hosted zone public or private"
}

variable ssh_access_cidr {
  description = "List of CIDRs from which SSH access is allowed"
  type = list
}

variable api_access_cidr {
  description = "List of CIDRs from which API access is allowed"
  type = list
}