//create database
// use inventory_management_product;

//create collections

db.createCollection("users");
db.createCollection("admin");
db.createCollection("category");
db.createCollection("items");
db.createCollection("orders");
db.createCollection("suppliers");
db.createCollection("products");
db.createCollection("suppliers_products");
db.createCollection("customers");

//inserting records into collections

// insert into user
db.users.insertMany([
  {
    _id: 1,
    username: "john_son",
    email: "john23@gmail.com",
    phone_no: 70399990,
    user_type: "customer",
  },
  {
    _id: 2,
    username: "johnbull",
    email: "john@gmail.com",
    phone_no: 23399990,
    user_type: "Admin",
  },
]);

// insert into Admin
db.admin.insertOne([
  {
    _id: 1,
    fullname: "Agba olufemi",
    username: "Agba",
    email: "agba@gmail.com",
    phone_no: 1899775,
    users_id: 2,
  },
]);

// insert into category
db.category.insertMany([
  {
    _id: 1,
    name: "Appliances",
  },
  {
    _id: 2,
    name: "Fashion",
  },
]);

//insert into items
db.items.insertMany([
  {
    _id: 1,
    item_name: "pressing-iron",
    price: 30,
    size: "medium",
    weight: 2.5,
    category_id: 1,
  },
  {
    _id: 2,
    item_name: "frides",
    price: 40,
    size: "large",
    weight: 45,
    category_id: 1,
  },
]);

// insert into orders

db.orders.insertOne([
  {
    _id: 1,
    user_id: 1,
    quantity: 3,
    order_date: 23 / 12 / 2023,
    item_id: 3,
  },
]);

//getting records
db.users.find();
db.users.items();

//updating records
db.users.updateOne({ _id: 1 }, { $set: { username: "joanna" } });

//delete records
db.items.deleteOne({ _id: 2 });
