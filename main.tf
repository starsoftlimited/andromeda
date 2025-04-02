
terraform {
  required_providers {
    port = {
      source = "port-labs/port-labs"
      version = "2.1.8"
    }
  }
}
/* import {
  id = "mich_test_i"
  to = port_blueprint.mich_test_i
}
import {
  id = "enumtest"
  to = port_blueprint.enumtest
}
import {
  id = "_team"
  to = port_blueprint._team
}

resource "port_blueprint" "microservice819" {
  title      = "Microservice819"
  icon       = "Microservice"
  identifier = "microservice819"
  properties = {
    string_props = {
      "domain" = {
        title = "Domain"
      }
      "slack-channel" = {
        title  = "Slack Channel"
        format = "url"
      }
      "myStringProp" = {
        title      = "My string"
        required   = false
        enum       = ["my-option-1", "my-option-2"]
        enum_colors = {
          "my-option-1" = "red"
          "my-option-2" = "green"
        }
      }

    }
  }
  
}
resource "port_blueprint" "mich_test_i" {
  title                       = "mich_test_i"
  create_catalog_page         = true
  force_delete_entities       = false
  icon                        = "Microservice"
  identifier                  = "mich_test_i"
  properties = {
    array_props = {
      someting_metric = {
        required     = false
        string_items = {
          default = ["Option One"]
        }
        title = "Someting Metric"
      }
    }
  }
}

resource "port_blueprint" "enumtest" {
  title                       = "enumtest"
  create_catalog_page         = true
  force_delete_entities       = false
  icon                        = "Microservice"
  identifier                  = "enumtest"
  properties = {
    string_props = {
      myenum = {
        enum        = ["option", "option_1", "option_2"]
        enum_colors = {
          option   = "pink"
          option_1 = "turquoise"
          option_2 = "blue"
        }
        required            = false
        title               = "myenum"
      }
    }
  }
}

resource "port_blueprint" "portal_use_case_request" {
  calculation_properties = {
    number_of_voters = {
      calculation = ".relations.requesting_user | length"
      colorized   = null
      colors      = null
      description = null
      format      = null
      icon        = null
      title       = "Number of voters"
      type        = "number"
    }
  }
  create_catalog_page         = true
  description                 = "Describes use case requests submitted to the portal building team"
  force_delete_entities       = false
  icon                        = "Register"
  identifier                  = "portal_use_case_request"
  kafka_changelog_destination = null
  mirror_properties = {
  
  }
  properties = {
  
  }
  relations = {
 
  }
  team_inheritance              = null
  title                         = "Portal Feedback"
  webhook_changelog_destination = null
}
 */

 provider "port" {
  client_id = "MkWzCVL5BvtLxOXW0FLXz8Wx98TmsupU"     # or set the environment variable PORT_CLIENT_ID
  secret    = "Dlf43s9knxxJI99o6xuW7TGbKIeyQ0QfH70oF2eDpMBtxO2xCvYJqIBjEoW7IfRc" # or set the environment variable PORT_CLIENT_SECRET
  base_url  = "https://api.getport.io"
}

/* import {
  id = "domain"
  to = port_blueprint.domain
} */
/* resource "port_blueprint_permissions" "_team" {
  blueprint_identifier = "_team"
  entities = {
    register = {
      owned_by_team = false
      roles         = ["_team-moderator", "Admin"]
      teams         = []
      users         = []
    }
    unregister = {
      owned_by_team = false
      roles         = ["_team-moderator", "Admin"]
      teams         = []
      users         = []
    }
    update = {
      owned_by_team = false
      roles         = ["_team-moderator", "Admin"]
      teams         = []
      users         = []
    }
    update_metadata_properties = {
      icon = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
      identifier = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
      team = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
      title = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
    }
    update_properties = {
      description = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
    }
  }
}
 */
/* resource "port_blueprint_permissions" "domain" {
  blueprint_identifier = "domain"
  entities = {
    register = {
      owned_by_team = false
      roles         = ["_team-moderator", "Admin"]
      teams         = []
      users         = []
    }
    unregister = {
      owned_by_team = false
      roles         = ["_team-moderator", "Admin"]
      teams         = []
      users         = []
    }
    update = {
      owned_by_team = false
      roles         = ["_team-moderator", "Admin"]
      teams         = []
      users         = []
    }
    update_metadata_properties = {
      icon = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
      identifier = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
      team = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
      title = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
    }
    update_properties = {
      description = {
        owned_by_team = false
        roles         = ["_team-moderator", "Admin"]
        teams         = []
        users         = []
      }
    }
  }
} */

resource "port_action" "sampler2" {
    icon                 = "Terraform"
    identifier           = "sampler2"
    kafka_method         = {
        payload = jsonencode(
            {
                runId = "{{.run.id}}"
            }
        )
    }
    self_service_trigger = {
        blueprint_identifier = "domain"
        operation            = "DAY-2"
        steps                = [
            {
                order = [
                    "test_1",
                ]
                title = "Step (2)"
            },
        ]
        user_properties      = {
            string_props = {
                "test_1" = {
                    blueprint = "domain"
                    format    = "entity"
                    title     = "test 1"
                },
            }
        }
    }
    title                = "Create Microservice-i"
}
                
  

resource "port_action" "create_microservice" {
    title = "Create Microservice-i"
    identifier = "create-microservice-i"
    icon = "Terraform"
    self_service_trigger = {
        operation = "CREATE"
        blueprint_identifier = "deployment"
        user_properties = {
            string_props = {
                myStringIdentifier = {
                    title = "My String Identifier"
                    required = true
                    format = "entity"
                    blueprint = "domain"
                    dataset = {
                        combinator = "and"
                        rules = [{
                            property = "$title"
                            operator = "contains"
                            value = {
                                jq_query = "\"specificValue\""
                            }
                        }]
                    }
                    sort = {
                        property = "$updatedAt"
                        order = "DESC"
                    }
                },
                gcp_project = {
                    blueprint = "domain"
                    format = "entity"
                    icon = "GoogleCloud"
                    required = true
                    title = "GCP Project"
                    dataset = {
                    combinator = "and"
                    rules = [
                        {
                        operator = "containsAny"
                        property = "$identifier"
                        value = {
                               jq_query = "[.user.teams[] | .name]"
                            }
                        }
                    ]
                    }
                    }
            }
            number_props = {
                myNumberIdentifier = {
                    title = "My Number Identifier"
                    required = true
                    maximum = 100
                    minimum = 0
                }
            }
            boolean_props = {
                myBooleanIdentifier = {
                    title = "My Boolean Identifier"
                    required = true
                }
            }
            object_props = {
                myObjectIdentifier = {
                    title = "My Object Identifier"
                    required = true
                }
            }
            array_props = {
                myArrayIdentifier = {
                    title = "My Array Identifier"
                    required = true
                    string_items = {
                        format = "entity"
                        blueprint = "service"
                        max_items = null
                        dataset = jsonencode({
                            combinator = "and"
                            rules = [{
                                property = "tests"
                                operator = "contains"
                                value    = "test"
                            }]
                        })
                    }
                    sort = {
                        property = "$updatedAt"
                        order = "DESC"
                    }
                },
                kv_secrets = {
                    boolean_items    = null
                    default_jq_query = ".entity.properties.vault_secrets "
                    depends_on       = null
                    description      = null
                    icon             = "Key"
                    max_items        = null
                    min_items        = null
                    number_items     = null
                    object_items     = null
                    required         = true
                    string_items = {
                        blueprint     = "vault_secrets"
                        dataset       = null
                        default       = null
                        enum          = null
                        enum_jq_query = null
                        format        = "entity"
                    }
                    title            = "Secrets vault"
                    visible          = null
                    visible_jq_query = " if.entity.properties.fields != null"
        }
            }
        }
    }
    kafka_method = {
        payload = jsonencode({
          runId: "{{.run.id}}"
        })
    }
}

resource "port_action" "samplee" {
    icon                 = "Terraform"
    identifier           = "samplee"
    self_service_trigger = {
        title                = "Create Microservice-i"
        blueprint_identifier = "domain"
        operation            = "DAY-2"      
        user_properties      = {
            number_props = {
                "input_3" = {
                    title = "Input3"
                },
                "input_4" = {
                    title = "Input4"
                },
                "input_5" = {
                    title = "input5"
                },
            }
            object_props = {
                "input_6" = {
                    title = "input6"
                },
            }
            string_props = {
                "input" = {
                    blueprint = "domain"
                    format    = "entity"
                    icon      = "DefaultProperty"
                    title     = "input1"
                },
                "input_2" = {
                    icon  = "DefaultProperty"
                    title = "input2"
                },
                "input_7" = {
                    title = "input7"
                },
                "input_8" = {
                    title = "input8"
                },
            }
        }
        steps                = [
            {
                order = [
                    "input",
                    "input_2",
                    "input_3",
                ]
                title = "Step (2)"
            },
            {
                order = [
                    "input_4",
                    "input_5",
                    "input_6",
                ]
                title = "Step (3)"
            },
            {
                order = [
                    "input_7",
                    "input_8",
                ]
                title = "Step (4)"
            },
        ]
    }
kafka_method         = {
        payload = jsonencode(
            {
                runId = "{{.run.id}}"
            }
        )
    }
}



resource "port_blueprint" "containers66" {
  title      = "Containers66"
  identifier = "containers66"
  properties = {
    string_props = {
      "aws-region" = {
        title = "AWS Region"
      }
      "docs-url" = {
        title  = "Docs URL"
        format = "url"
      }
    }
  }
}

resource "port_entity" "myEntity" {
  identifier = "test_478"
  title      = "test_478"
  blueprint  = "database"
}

resource "port_page" "database_page" {
  identifier            = "database_page"
  title                 = "My-databases"
  type                  = "blueprint-entities"
  icon                  = "Microservice"
  blueprint             = "database"
  widgets               = [
    jsonencode(
      {
        "id" : "my-databases-table-entities",
        "type" : "table-entities-explorer",
        "dataset" : {
          "combinator" : "and",
          "rules" : [
            {
              "operator" : "=",
              "property" : "$blueprint",
              "value" : "{{blueprint}}"
            },
            {
              "operator": "contains",
              "property": "test_string",
              "value": "test"
            }
          ]
        }
      }
    )
  ]
}

/* data "port_search" "all_service" {
  query = jsondecode(jsonencode({
    "combinator" : "and", "rules" : [
      {
              "operator" : "=",
              "property" : "$blueprint",
              "value" : "database"
            },
            {
              "operator": "contains",
              "property": "test_string",
              "value": "test"
            }
    ]
  })
} */
/* output "db_test_contains" {
  value = [for entity in data.port_search.all_service.entities : lookup(entity.properties.string_props, "test_string", "default_value")]
}
output "db_test_contains_first_index" {
  value = [for entity in data.port_search.all_service.entities : lookup(entity.properties.string_props, "test_string", "default_value")][0]
}

output "test_string_value" {
  value = join("", [for entity in data.port_search.all_service.entities : lookup(entity.properties.string_props, "test_string", "default_value")])
}
 */
resource "port_webhook" "example_webhook" {
  identifier  = "example_webhook"
  title       = "Example Webhook"
  description = "This is an example webhook configuration"
  icon        = "Webhook"
  enabled     = true
  mappings= [jsondecode(file("${path.module}/webhookmapping.json"))] 
  security={
    secret                 = "your_webhook_secret"
    signature_header_name  = "x-signature"
    signature_algorithm    = "sha256"
    signature_prefix       = "sha256="
    request_identifier_path = ".headers['x-request-id']"
  }
}
# port_webhook.example_webhook:
resource "port_webhook" "example_webhook2" {
    title      = "Example webhook2"
    identifier  = "example_webhook2"
    description = "This is an example webhook configuration"
    enabled     = true
    icon        = "Webhook"
    mappings    = [
        {
            blueprint = "azureDevopsWorkItem"
            entity    = {
                identifier = ".body.resource.workItemId // .body.resource.id | tostring"
                properties = {
                    "assigned_to"       = ".body.resource.fields.\"System.AssignedTo\"  | if type == \"string\" then split(\" <\")[1] | rtrimstr(\">\")  | ascii_downcase else empty end"
                    "changedBy"         = ".body.resource.fields.\"System.ChangedBy\"  | if type == \"string\" then split(\" <\")[1] | rtrimstr(\">\")  | ascii_downcase else empty end"
                    "changedDate"       = ".body.resource.fields.\"System.ChangedDate\""
                    "completed_work"    = ".body.resource.fields.\"Microsoft.VSTS.Scheduling.CompletedWork\""
                    "createdBy"         = ".body.resource.fields.\"System.CreatedBy\" | if type == \"string\" then split(\" <\")[1] | rtrimstr(\">\")  | ascii_downcase else empty end"
                    "createdDate"       = ".body.resource.fields.\"System.CreatedDate\""
                    "description"       = ".body.resource.fields.\"System.Description\""
                    "effort"            = ".body.resource.fields.\"Microsoft.VSTS.Scheduling.Effort\" | ascii_downcase?"
                    "effort_size"       = ".body.resource.fields.\"Microsoft.VSTS.Scheduling.Size\""
                    "is_request_number" = ".body.resource.fields.\"Federated.IS.RequestNumber\""
                    "iteration"         = ".body.resource.fields.\"System.IterationPath\""
                    "original_estimate" = ".body.resource.fields.\"Microsoft.VSTS.Scheduling.OriginalEstimate\""        
                    "priority"          = ".body.resource.fields.\"Microsoft.VSTS.Common.Priority\""
                    "reason"            = ".body.resource.fields.\"System.Reason\""
                    "remaining_work"    = ".body.resource.fields.\"Microsoft.VSTS.Scheduling.RemainingWork\""
                    "state"             = ".body.resource.fields.\"System.State\""
                    "tags"              = ".body.resource.fields.\"System.Tags\" // \"\" | split(\"; \")"
                    "type"              = ".body.resource.fields.\"System.WorkItemType\""
                }
                relations  = {
                    "domain" = jsonencode(
                        {
                            combinator = "and"
                            rules      = [
                                {
                                    operator = "="
                                    property = "release"
                                    value    = "yes"
                                },
                            ]
                        }
                    )
                }
            }
            filter    = "(.body.eventType | IN(\"workitem.created\", \"workitem.restored\")) and (.body.resource.fields.\"System.State\" | IN(\"Done\", \"Closed\", \"Removed\", \"Resolved\", \"Completed\") | not)"
        },
    ]
    security    = {
        request_identifier_path = ".headers['x-request-id']"
        secret                  = "your_webhook_secret"
        signature_algorithm     = "sha256"
        signature_header_name   = "x-signature"
        signature_prefix        = "sha256="
    }
 
}

resource "port_blueprint" "standard" {
  title       = "Standard"
  icon        = "Template"
  identifier  = "standard-blueprint"
  description = "Standards Data fetched from Github"
  properties = {
    string_props = {
      "version" = {
        type        = "string"
        title       = "Version"
        description = "Version"
        required    = true
      },
      "name" = {
        type        = "string"
        title       = "Standard"
        description = "Standard Name"
        required    = true
      }
    },
    array_props = {
      "internal-docs" = {
        title         = "Internal Documents"
        required      = false
        description   = "Internal Documents for standard"
        string_items = {
          format = "url"
        }       
      },
      "external-docs" = {
        title         = "External Documents"
        required      = false
        description   = "External Documents for standard"
        string_items = {
          format = "url"
        }       
      }
    }
  }
  relations = {
  }
} 

resource "port_page" "cpo_dashboard_page" {
  identifier            = "cpo_dashboard"
  title                 = "CPO Dashboard"
  description           = "Provides team details,cloud actions and team activities"
  icon                  = "Cloud"
  type                  = "dashboard"
  widgets               = [
    jsonencode(
      {
        "id" : "dashboardWidget",
        "layout" : [
                       {  
                           "height"  = 400
                           "columns" = [
                               {
                                   id   = "actionhistory"
                                   size = 6
                                },
                                 {
                                   id   = "KTexample"
                                   size = 6
                                }
                            ]  
                        },
                    ],
        "type" : "dashboard-widget",
        "widgets" : [
          {
           "title" : "KT Example action history",
           "type" : "action-runs-table-widget",
            "displayMode": "widget"
           "icon" : "Bolt",
           "id" : "actionhistory",
           "description" : "",
           "action": "service_github_create_s3_bucket"
         },
         {
           "title" : "Self-service action",
           "type" : "action-card-widget",
           "icon" : "Bolt",
           "id" : "KTexample",
           "description" : "",
           "actions": [  
             {
               "action": "service_github_create_s3_bucket"
             }
          ]
         },
        ],
      }
    )
  ]
}

resource "port_page" "ccpo_dashboard_page" {
    description = "Provides team details,cloud actions and team activities"
    icon        = "Cloud"
    identifier  = "ccpo_dashboard"
    title       = "CPO Dashboard"
    type        = "dashboard"
    widgets     = [
        jsonencode(
            {
                id        = "dashboardWidget"
                layout    = [
                    {
                        columns = [
                            {
                                id   = "actionhistory"
                                size = 4
                            },
                            {
                                id   = "qwjab2QL5u95ZPkf"
                                size = 4
                            },
                            {
                                id   = "KTexample"
                                size = 4
                            },
                        ]
                        height  = 400
                    },
                ]
                type      = "dashboard-widget"
                widgets   = [
                    {
                        action      = "service_github_create_s3_bucket"
                        description = ""
                        displayMode = "widget"
                        icon        = "Bolt"
                        id          = "actionhistory"
                        title       = "KT Example action history"
                        type        = "action-runs-table-widget"
                    },
                    {
                        actions     = [
                            {
                                action = "samplee"
                            },
                        ]
                        description = ""
                        icon        = "Bolt"
                        id          = "KTexample"
                        title       = "Self-service action"
                        type        = "action-card-widget"
                    },
                    {
                        action      = "service_github_create_s3_bucket"
                        description = "To complete setting up this action, please refer to the following guide: [Setup create github secret action ->](https://docs.getport.io/create-self-service-experiences/setup-backend/github-workflow/examples/create-github-secret){:target=\"_blank\"}"
                        displayMode = "widget"
                        icon        = "Bolt"
                        id          = "qwjab2QL5u95ZPkf"
                        title       = "Myhistory"
                        type        = "action-runs-table-widget"
                    },
                ]
            }
        ),
    ]
}


