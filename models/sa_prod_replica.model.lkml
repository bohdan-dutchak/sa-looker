# Define the database connection to be used for this model.
connection: "sa_prod_replica"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: sa_prod_replica_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sa_prod_replica_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Sa Prod Replica"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

datagroup: dg {
  max_cache_age: "24 hours"
  interval_trigger: "24 hours"
}


explore: users_user {
  persist_with: dg
  label: "Joined_data"

  join: questionnaire_userquestionnaire {
    type: left_outer
    relationship: one_to_one
    sql_on: ${users_user.id}=${questionnaire_userquestionnaire.user_id} ;;
  }

  join: product_group {
    type: left_outer
    relationship: one_to_many
    sql_on: ${users_user.id}=${product_group.user_id} ;;
  }

  join: products {
    type: left_outer
    relationship: many_to_many
    sql_on: ${products.group_id} = ${product_group.id} ;;
  }

  join: facescans{
    type: left_outer
    relationship: one_to_many
    sql_on: ${users_user.id}=${facescans.user_id} ;;
  }

  join: routines_dailyquestionnaire {
    type: left_outer
    relationship: many_to_many
    sql_on: ${users_user.id}=${routines_dailyquestionnaire.user_id} ;;
  }

  join: geodata {
    type: left_outer
    relationship: many_to_one
    sql_on: ${users_user.geolocation}=${geodata.alpha} ;;
  }

  join: cha_gpt_messages{
    type: left_outer
    relationship: many_to_many
    sql_on: ${users_user.id}=${cha_gpt_messages.user_id};;
  }

}

explore: mashup {
  persist_with: dg
  label: "Brand Cousage"
}
