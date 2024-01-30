# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Configure the Datadog provider
terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
  }
}

provider "datadog" {
  api_url = "https://ap1.datadoghq.com/"
}


resource "datadog_rum_application" "rum_application" {
  name = "testing-terradog-nextjs"
  type = "browser"
}


# resource "datadog_rum_application" "rum_application_flutter" {
#   name = "testing-terradog-flutter"
#   type = "flutter"
# }

# resource "datadog_rum_application" "rum_application_react_native" {
#   name = "testing-terradog-react-native"
#   type = "react-native"
# }