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


# explore: routines_dailyproductgroup {
#   label: "Products"

#   join: routines_dailyproduct{
#     type: inner
#     relationship: one_to_many
#     sql_on: ${routines_dailyproductgroup.id}=${routines_dailyproduct.group_id} ;;
#   }
# }

explore: facescans {}

explore: users_user {
  label: "Joined_data"

  join: questionnaire_userquestionnaire {
    type: left_outer
    relationship: one_to_one
    sql_on: ${users_user.id}=${questionnaire_userquestionnaire.user_id} ;;
  }

  join: facescans{
    type: left_outer
    relationship: one_to_many
    sql_on: ${users_user.id}=${facescans.user_id} ;;
  }

  # join: routines_dailyproductgroup {
  #   type: left_outer
  #   relationship: one_to_many
  #   sql_on: ${users_user.id}=${routines_dailyproductgroup.user_id} ;;
  # }



}
