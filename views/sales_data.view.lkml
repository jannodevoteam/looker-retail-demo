# The name of this view in Looker is "Sales Data"
view: sales_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `janno-sandbox-406508.retail_test_dataset.sales_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dept" in Explore.

  dimension: dept {
    type: number
    sql: ${TABLE}.Dept ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dept {
    type: sum
    sql: ${dept} ;;  }
  measure: average_dept {
    type: average
    sql: ${dept} ;;  }

  dimension: is_holiday {
    type: yesno
    sql: ${TABLE}.IsHoliday ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.Store ;;
  }

  dimension: weekly_sales {
    type: number
    sql: ${TABLE}.Weekly_Sales ;;
  }
  measure: count {
    type: count
  }
}
