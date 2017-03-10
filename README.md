Leaflet Routing Machine / OSRM 4
================================

[![npm version](https://img.shields.io/npm/v/lrm-osrm4.svg)](https://www.npmjs.com/package/lrm-osrm4)

Extends [Leaflet Routing Machine](https://github.com/perliedman/leaflet-routing-machine) with support for [OSRM](https://graphhopper.com/)'s old major version, OSRM 4; Leaflet Routing Machine has built-in support for OSRM 5.

Some brief instructions follow below, but the [Leaflet Routing Machine tutorial on alternative routers](http://www.liedman.net/leaflet-routing-machine/tutorials/alternative-routers/) is recommended.

## Installing

Go to the [releases page](https://github.com/perliedman/lrm-osrm4/releases) to get the script to include in your page. Put the script after Leaflet and Leaflet Routing Machine has been loaded.

To use with for example Browserify:

```sh
npm install --save lrm-osrm4
```

## Using

There's a single class exported by this module, `L.Routing.OSRM4`. It implements the [`IRouter`](http://www.liedman.net/leaflet-routing-machine/api/#irouter) interface. Use it to replace Leaflet Routing Machine's default OSRM 5 router implementation:

```javascript
var L = require('leaflet');
require('leaflet-routing-machine');
require('lrm-osrm4'); // This will tack on the class to the L.Routing namespace

L.Routing.control({
    router: L.routing.osrm4('http://your-osrm-url'),
}).addTo(map);
```

Note that you will need to set up your own OSRM4 server: OSRM's demo server is running OSRM 5.
