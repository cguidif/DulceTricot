const express = require("express");
const router = express.Router();
const { database } = require("../config/helpers");

/* GET ALL CATEGORIES */
router.get("/", function (req, res) {
  // Sending Page Query Parameter is mandatory http://localhost:3636/api/categories?page=1
  let page =
    req.query.page !== undefined && req.query.page !== 0 ? req.query.page : 1;
  const limit =
    req.query.limit !== undefined && req.query.limit !== 0
      ? req.query.limit
      : 10; // set limit of items per page
  let startValue;
  let endValue;
  if (page > 0) {
    startValue = page * limit - limit; // 0, 10, 20, 30
    endValue = page * limit; // 10, 20, 30, 40
  } else {
    startValue = 0;
    endValue = 10;
  }
  database
    .table("categories as c")
    .withFields(["c.id", "c.title", "c.image"])
    .slice(startValue, endValue)
    .sort({ id: 0.1 })
    .getAll()
    .then((cats) => {
      if (cats.length > 0) {
        res.status(200).json({
          count: cats.length,
          categories: cats,
        });
      } else {
        res.json({ message: "No categories found" });
      }
    })
    .catch((err) => console.log(err));
});

/* GET ONE CATEGORY*/
router.get("/:categId", (req, res) => {
  let categId = req.params.prodId;
  database
    .table("category as c")
    .withFields(["c.title", "p.image", "p.id"])
    .filter({ "c.id": categId })
    .get()
    .then((prod) => {
      console.log(prod);
      if (prod) {
        res.status(200).json(prod);
      } else {
        res.json({ message: `No category found with id ${categId}` });
      }
    })
    .catch((err) => res.json(err));
});

module.exports = router;
