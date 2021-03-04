from pynput.keyboard import Listener, Key
import time
import sys
import serial

switch0 = False
switch1 = False
switch2 = False
switch3 = False

def on_press(key):
    global switch0, switch1, switch2, switch3
    #Buttons
    if (key.char == '1'):
        ser.write("gpio set 0\r")
        time.sleep(0.1)
        ser.write("gpio clear 0\r")
    elif (key.char == '2'):
        ser.write("gpio set 1\r")
        time.sleep(0.1)
        ser.write("gpio clear 1\r")
    elif (key.char == '3'):
        ser.write("gpio set 2\r")
        time.sleep(0.1)
        ser.write("gpio clear 2\r")
    elif (key.char == '4'):
        ser.write("gpio set 3\r")
        time.sleep(0.1)
        ser.write("gpio clear 3\r")
        
    #Switches
    elif (key.char == '5'):
        if(switch0 == False):
            ser.write("gpio set 4\r")
        else:
            ser.write("gpio clear 4\r")
        switch0 = not switch0
    elif (key.char == '6'):
        if(switch1 == False):
            ser.write("gpio set 5\r")
        else:
            ser.write("gpio clear 5\r")
        switch1 = not switch1
    elif (key.char == '7'):
        if(switch2 == False):
            ser.write("gpio set 6\r")
        else:
            ser.write("gpio clear 6\r")
        switch2 = not switch2
    elif (key.char == '8'):
        if(switch3 == False):
            ser.write("gpio set 7\r")
        else:
            ser.write("gpio clear 7\r")
        switch3 = not switch3
        

#Start the COM port
print ('Starting COM port')
ser = serial.Serial(
    port='/dev/ttyACM0',
    baudrate=115200,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS,
    xonxoff=True,
    dsrdtr=True
)

try:
    ser.isOpen()
    ser.write("\r")
    ser.write("\r")
    ser.write("gpio iodir 00\r")
    ser.write("gpio iodir 00\r")
    print ('Started COM port')
    with Listener(on_press=on_press) as listener:  
        listener.join()  

except serial.SerialException:
    print ("Failed to open COM port")