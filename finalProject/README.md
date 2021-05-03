# README

The purpose of this project is to create a controller that will control the LED lights on the zybo board, as well as display a counter of how long the ALS pmod is active. The overall goal of the project is to create a miniature home automation system that can be used to alter and monitor household lights. It communicates to the controller through the UART protocol on the UART pmod and BT2 pmod.


# How to:

There are two ways to test my project: python controller or termite terminal

## Python Jupyter Notebook

To run this project in a jupyter notebook, open the file `lightCtrl.ipynb` in jupyter lab. Replace the serial ports `COM5` and `COM6` with the designated ports of `PMOD UART` and `PMOD BT2`. Check off the led lights and press `Send` to see the led lights change. Press `Light Uptime` to refresh the light uptime counter on the screen.

## Termite Terminal

To run this project in termite terminal, open the designated COM ports for `PMOD UART` and `PMOD BT2`. The terminal for the UART should just display a stream of `[00]` while the light is off, and count up while the light is on. 
To test the led lights, input the ascii equivalent value of the bit vector of the led command into the terminal. 
For example:

>`All leds on = "11111111" -> ÿ`
>
>`All leds off = "11110000" -> ð`
>
>`Turn led2 on = "00100010" -> "`
