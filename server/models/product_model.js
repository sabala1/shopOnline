import mongoose from "mongoose";
import ratingSchema from "./rating_model.js"

const productSchema = mongoose.Schema({
    name: {
      type: String,
      required: true,
      trim: true,
    },
    description: {
      type: String,
      required: true,
      trim: true,
    },
    images: [
      {
        type: String,
        required: true,
      },
    ],
    quantity: {
      type: Number,
      required: true,
    },
    price: {
      type: Number,
      required: true,
    },
    category: {
      type: String,
      required: true,
    },
    //ratings: [ratingSchema],
});
export default mongoose.model("Product", productSchema);