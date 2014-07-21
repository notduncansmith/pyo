# Pyo 

A simple, promise-based wrapper for the Yo api.


## Before Using

Make sure you've signed up for the Yo api.  You can do so [here](http://yoapi.justyo.co/).
Have your API token ready at the next window.


## Get it

`npm install --save pyo`

## Initialization

Create an instance of the api wrapper like so:

```javascript
var Api = require('pyo');
api = new Api('YOUR_API_TOKEN');
```

## Usage

To send a Yo to all of your followers: 

```javascript
api.yoAll()
.then(function (result) {
  // => {result: 'OK'}
});
```

To send a Yo to just one user:

```javascript
api.yoOne('notduncansmith')
.then(function (result) {
  // => {result: 'OK'}
  // By the way, feel free to YO me if you find this module helpful!
});
```

To get a count of all your subscribers:

```javascript
qpi.subscribers()
.then(function (subCount) {
  // => 3
});
```

Feel free to send pull requests!  If you do, please make sure to compile the entry point.
