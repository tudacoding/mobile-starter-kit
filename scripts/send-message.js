//
var admin = require('firebase-admin');
// 1. Download a service account key (JSON file) from your Firebase console and add to the example/scripts directory
var serviceAccount = require('./google-services.json');
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

// 2. Copy the token for your device that is printed in the console on app start (`flutter run`) for the FirebaseMessaging example
const token = 'eojLJQ4jnEhEnyov94gXqo:APA91bFR8iolRsc6-b48YLGbPhVLxONbWyPtu2gi0WUl-nxh8KboVn3WvGhXjmgqiVS0L-JbDhK4om-5ZIiW0M7s2A2aQIpwy-YwkeYysPmtR_DaFv0S7ytes-XDlA9AZdvrlr4ZsH3L';


// 3. From your terminal, root to example/scripts directory & run `npm install`.
// 4. Run `npm run send-message` in the example/scripts directory and your app will receive messages in any state; foreground, background, terminated.
// If you find your messages have stopped arriving, it is extremely likely they are being throttled by the platform. iOS in particular
// are aggressive with their throttling policy.
admin
  .messaging()
  .sendToDevice(
    [token],
    {
      data: {
        foo: 'bar',
      },
      notification: {
        title: 'Helloo',
        body: 'Im a mesage',
      },
    },
    {
      // Required for background/terminated app state messages on iOS
      contentAvailable: true,
      // Required for background/terminated app state messages on Android
      priority: 'high',
    }
  )
  .then((res) => {
    if (res.failureCount) {
      console.log('Failed', res.results[0].error);
    } else {
      console.log('Success');
    }
  })
  .catch((err) => {
    console.log('Error:', err);
  });