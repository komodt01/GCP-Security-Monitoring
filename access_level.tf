
resource "google_access_context_manager_access_level" "allow_ip" {
  parent       = "accessPolicies/${google_access_context_manager_access_policy.org_policy.name}"
  name         = "accessPolicies/${google_access_context_manager_access_policy.org_policy.name}/accessLevels/allow_ip_7324316848"
  title        = "allow_ip_7324316848"

  basic {
    conditions {
      ip_subnetworks = ["73.243.168.48/32"]
      required_access_levels = []
    }
    combining_function = "AND"
  }
}
