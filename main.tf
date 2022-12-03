module "autoscaling" {
    source = "./modules/autoscaling"
    namespace = var.namespace

    # Input arguments for the autoscaling module, set by other module's outputs
    ssh_keypair = var.ssh_keypair
    vpc = module.networking.vpc
    sg = module.networking.sg
    db_config = module.database.db_config
}

module "database" {
    source = "./modules/database"
    namespace = var.namespace
    # Data bubles up from the networking module and trickles down into the db module
    vpc = module.networking.vpc
    sg = module.networking.sg
}

module "networking" {
    source = "./modules/networking"
    namespace = var.namespace
}