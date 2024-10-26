import * as functions from "firebase-functions/v2";
import * as logger from "firebase-functions/logger";
import * as admin from "firebase-admin";
import * as crypto from "crypto";

admin.initializeApp();

const hmacSha256 = (input: string, key: string) => {
  const hmac = crypto.createHmac("sha256", key);
  hmac.update(input);
  return hmac.digest("hex");
};

exports.orderWebhook = functions.https.onRequest(
  async (req, res) => {
    logger.info("Request headers:", JSON.stringify(req.headers));
    logger.info("Request body:", JSON.stringify(req.body));
    const signSecret = "whsec_Yd2ZlznuHQqkkoqU6UgEA4SKIYsEYMM2WqQaQY8YIsM";
    const signature = req.headers["x-webhook-signature"];
    const body = JSON.stringify(req.body);

    const expectedSignature = hmacSha256(body, signSecret);
    if (signature !== expectedSignature) {
      logger.error("Invalid signature");
      res.status(403).send("Invalid signature");
      return;
    }

    try {
      const event = req.body.event;
      logger.info("Event:", event);

      const order = req.body.object;
      const paymentId = order.payment_id;

      await admin.firestore().collection("fourVenues-orders")
        .doc(paymentId).update({...order, event});
      logger.info("Order saved successfully");
      res.status(200).send("Order saved successfully");
    } catch (error) {
      logger.error(`firebase-saving-error: ${error}`);
      res.status(500).send("Failed to save the order on firestore");
    }
  });
