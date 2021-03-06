locals {
  mandatory_tag = {
    line_of_business        = "hospital"
    ado                     = "max"
    tier                    = "WEB"
    operational_environment = upper(terraform.workspace)
    tech_poc_primary        = "kingsleyammar660@gmail.com"
    tech_poc_secondary      = "kingsleyammar660@gmail.com"
    application             = "http"
    builder                 = "kingsleyammar660@gmail.com"
    application_owner       = "kojitechs.com"
    vpc                     = "WEB"
    cell_name               = "WEB"
    component_name          = "IAC-TERRAFORM-REPO"

  }
}