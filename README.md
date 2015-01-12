##Lightswitch
The lightswitch in my room is perhaps somewhat overengineered.  _Fiat lux, motherfuckers_

This code controls the 960 individually addressable RGB LEDs that provide lighting in my bedroom.  The system is controlled by a [Griffin PowerMate](http://store.griffintechnology.com/powermate) knob which has been stuck to the wall and a minimal web interface.  The system keeps track of the time of day and blueshift/redshifts the lights slightly as well as periodically introduces a bit of lighting entropy by inducing brief environmental lighting effects.  It is built on top of [fadecandy](https://github.com/scanlime/fadecandy) written by [scanlime](misc.name) and uses both the [fadecandy server](https://github.com/scanlime/fadecandy/tree/master/server) and the [fadecandy LED controllers](https://www.adafruit.com/product/1689).  The system runs on an [odroid-u3](http://hardkernel.com/main/products/prdt_info.php?g_code=G138745696275).

The entire system consists of five components:

###lightsd
This daemon controls the actual lights and pushes data to fadecandy server.  It takes input from stated on a socket and generates each frame of pixel data.  It contains the low-level effects framework and modules.

###stated
This daemon interacts with external sources of user input and coordinates the state of the system, the communication thereof and is hopefully the only service which will pass control sequences to lightsd.

###ambd
This daemon keeps track of ambient state of the default effect, including redshift/blueshift adjustments according to time of day and periodic light fluctuations just to keep things special.

###switchd
This daemon takes input from the actual switch (knob) mounted on the wall and turns that into lighting changes.

###webd
This daemon provides a web interface to the system and allows users to control the system via the web.
