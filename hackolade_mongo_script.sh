use db_amazonas;

db.createCollection("col_clients", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "col_clients",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "client_name": {
                    "bsonType": "string"
                },
                "client_email": {
                    "bsonType": "string"
                },
                "client_created_date": {
                    "bsonType": "date"
                },
                "client_address": {
                    "bsonType": "array",
                    "additionalItems": true,
                    "items": [
                        {
                            "bsonType": "string"
                        },
                        {
                            "bsonType": "string"
                        },
                        {
                            "bsonType": "string"
                        }
                    ]
                },
                "client_cpf": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});




db.createCollection("col_products", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "col_products",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "product_name": {
                    "bsonType": "string"
                },
                "product_description": {
                    "bsonType": "string"
                },
                "category_id": {
                    "bsonType": "string"
                },
                "supplier_id": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});




db.createCollection("col_orders", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "col_orders",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "customer_id": {
                    "bsonType": "string"
                },
                "order_date": {
                    "bsonType": "string"
                },
                "payment_method": {
                    "bsonType": "string"
                },
                "total": {
                    "bsonType": "number"
                },
                "shopping_cart": {
                    "bsonType": "array",
                    "additionalItems": true,
                    "items": [
                        {
                            "bsonType": "string"
                        },
                        {
                            "bsonType": "string"
                        },
                        {
                            "bsonType": "string"
                        },
                        {
                            "bsonType": "string"
                        },
                        {
                            "bsonType": "number"
                        },
                        {
                            "bsonType": "number"
                        }
                    ]
                }
            },
            "additionalProperties": false
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});




db.createCollection("col_product_category", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "col_product_category",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "category_name": {
                    "bsonType": "string"
                },
                "category_description": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});




db.createCollection("col_suppliers", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "col_suppliers",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "supplier_name": {
                    "bsonType": "string"
                },
                "supplier_address": {
                    "bsonType": "array",
                    "additionalItems": true,
                    "items": [
                        {
                            "bsonType": "string"
                        },
                        {
                            "bsonType": "string"
                        },
                        {
                            "bsonType": "string"
                        }
                    ]
                },
                "supplier_created_date": {
                    "bsonType": "date"
                },
                "is_active": {
                    "bsonType": "bool"
                },
                "supplier_email": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});