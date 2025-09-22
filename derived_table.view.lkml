
view: derived_table {
  derived_table: {
    #test
    sql: SELECT
          `brand` AS `products.brand`,
          `category` AS `products.category`,
          `retail_price` AS `products.retail_price`,
          COUNT(*) AS `products.count`
      FROM
          `demo_db`.`products` AS `products`
      GROUP BY
          1,
          2,
          3
      ORDER BY
          4 DESC
      LIMIT 500 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: products_brand {
    type: string
    label: "@{field_label}"
    sql: ${TABLE}.`products.brand` ;;
  }

  dimension: products_category {
    type: string
    sql: ${TABLE}.`products.category` ;;
  }

  dimension: products_retail_price {
    type: number
    sql: ${TABLE}.`products.retail_price` ;;
  }

  dimension: products_count {
    type: number
    sql: ${TABLE}.`products.count` ;;
  }

  set: detail {
    fields: [
      products_brand,
      products_category,
      products_retail_price,
      products_count
    ]
  }
}
