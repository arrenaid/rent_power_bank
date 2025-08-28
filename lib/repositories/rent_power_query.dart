class RentPowerQuery{
  // static const apiKey ='';
  static const baseUrl = 'https://goldfish-app-3lf7u.ondigitalocean.app';
  static const endPointGenerateAccount = '/api/v1/auth/apple/generate-account';
  static const endPointGenerateBraneTreeToken = '/api/v1/payments/generate-and-save-braintree-client-token';
  static const endPointGetDefPayMethod= '/api/v1/payments/get-default-payment-method';
  static const endPointAddPaymentMethod = '/api/v1/payments/add-payment-method';
  static const dataAddPaymentMethod1 = 'paymentNonceFromTheClient';
  static const dataAddPaymentMethod2 = 'description';
  static const dataAddPaymentMethod3 = 'paymentType';
  static const endPointCreateSubscription = '/api/v1/payments/subscription/create-subscription-transaction-v2';
  static const endPointRentPowerbank = '/api/v1/payments/rent-power-bank';
  // static Map<String,dynamic> queryParametersBase = {};
}