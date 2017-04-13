# Remotely-Controlled-Robot-Vehicle

The idea of this project is to develop a robot vehicle which is capable of remotely controlled through a Wi-Fi (TCP/IP) network. 
The vehicle was capable of moving along a given path without any contact with the obstacles. 
Sonar sensors used to support the user to identify the obstacles and the positions of the obstacles showed in a UI in order 
to help the user to control the vehicle. NodeMCU has been used as the micro controller in this project. 
Speed of the vehicle has been controlled using Pulse Width Modulation(PWM). 

### Hardware Design:
![alt tag](Remotely-Controlled-Robot-Vehicle/Hardware_design.png)

### Functionalities:
1. The robot car uses a round chassis with two wheels and two ball omni wheels. 
    The chassis is chosen after considering the factor such as easiness of controlling the car etc. 
    The chassis is round and therefore it is symmetric in any axis through the centroid. 
    Therefor we can rotate the car while staying at the same place. 
    Moreover using a four wheel chassis could have caused the problems while turning the car since we have to balance two set 	of wheels to rotate in the same speed different. 
    Otherwise the car would have drifted away from the track.

2. A NodeMCU board is used as the main controller of the car where it is responsible for conducting the communication between the remote and the car then decode those signals into the commands to the motor controller etc. 
    Moreover it also collect the data from the Sonar sensors and forward that raw data to the remote application. 

3. The robot car uses L298 H-bridge motor controller to control its two gear motors which were used to rotate the two wheels. 
    Other than rotating the motors of the car (by providing sufficient power to the motor) the motor controller controls the speed of the wheels according to the PWM commands from the NodeMCU.

4. Two sonar sensors are used to identify if there are any obstacles from front or behind of the car. 
    We have used sonar sensors instead of simply using IR sensors since we can measure somewhat accurate measurement of the distance to the car from the detected obstacle. 
    Moreover the car sent the raw sensor data ( time interval of the echo pulse) to the remote controller, therefore it can calculate the distance to the obstacle without giving much overhead to the car. 
    Not only that the remote controller is capable of displaying the obstacles as in a radar display with respect to the car.
    
### Remote Controller:
  Communication between car and the computer is one of a important thing when controlling the vehicle. 
  TCP/IP is the protocol we used in order to communicate between ESP Wi-Fi module(which is attached with NodeMCU) and the remote controller( desktop app). 
  Using socket programming client and the server were implemented in both sides; the remote controller and the vehicle. 
  The vehicle acts as the server and the remote controller acts as the client when controlling the robot car remotely. 
  But when sending the raw sensor data the vehicle act as a client and the remote app start listen as a server.  
  After connecting to the Wi-Fi module vehicle can be controlled by sending messages from both UI buttons and the keyboard. 
  In addition to that the distance between vehicle the obstacles are computed. 
  obstacles and vehicle are being showed in the UI similar to a radar system.

