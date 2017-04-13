leftMotorForwardPin =4
leftMotorBackwardPin = 1
rightMotorForwardPin = 2
rightMotorBackwardPin = 3

pwmFrequency = 256
pwmDutyCycleSlow = 400
pwmDutyCycleFast = 1023
pwmDutyCycleMid = 700


pwm.setup(leftMotorForwardPin, pwmFrequency, 0)
pwm.setup(leftMotorBackwardPin, pwmFrequency, 0)
pwm.setup(rightMotorForwardPin, pwmFrequency, 0)
pwm.setup(rightMotorBackwardPin, pwmFrequency, 0)

function adjustMotors(data)
    print("Recieved payload : ")
    print (data)
    if data == "S" then                     -- Stop moving
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, 0)
    elseif data == "F" then                         -- Move forward slow
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(leftMotorForwardPin, pwmDutyCycleSlow)
        pwm.setduty(rightMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, pwmDutyCycleSlow)
    elseif data == "R" then                     -- Turn right slow
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(leftMotorForwardPin, pwmDutyCycleSlow)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, pwmDutyCycleSlow)
    elseif data == "B" then                     -- Move backward slow
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, pwmDutyCycleSlow)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, pwmDutyCycleSlow)
    elseif data == "L" then                     -- Turn left slow
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, pwmDutyCycleSlow)
        pwm.setduty(rightMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, pwmDutyCycleSlow)



    elseif data == "f" then                     -- Move forward fast
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(leftMotorForwardPin, pwmDutyCycleFast)
        pwm.setduty(rightMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, pwmDutyCycleFast)
    elseif data == "r" then                     -- Turn right fast
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(leftMotorForwardPin, pwmDutyCycleFast)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, pwmDutyCycleFast)
    elseif data == "b" then                     -- Move backward fast
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, pwmDutyCycleFast)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, pwmDutyCycleFast)
    elseif data == "l" then                     -- Turn left fast
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, pwmDutyCycleFast)
        pwm.setduty(rightMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, pwmDutyCycleFast)



    elseif data == "a" then                     -- Move forward & turn left  fast
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(leftMotorForwardPin, pwmDutyCycleMid)
        pwm.setduty(rightMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, pwmDutyCycleFast)
    elseif data == "e" then                     -- Move forward & Turn right fast
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(leftMotorForwardPin, pwmDutyCycleFast)
        pwm.setduty(rightMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, pwmDutyCycleMid)
    elseif data == "c" then                     -- Move backward & turn left fast
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, pwmDutyCycleMid)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, pwmDutyCycleFast)
    elseif data == "d" then                     -- Move backward & Turn left fast
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, pwmDutyCycleFast)
        pwm.setduty(rightMotorBackwardPin, pwmDutyCycleMid)
        pwm.setduty(rightMotorForwardPin, 0)



    elseif data == "A" then                     -- Move forward & Turn left fast
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(leftMotorForwardPin, pwmDutyCycleSlow)
        pwm.setduty(rightMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, pwmDutyCycleMid)
    elseif data == "E" then                    -- Move forward & Turn right fast
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(leftMotorForwardPin, pwmDutyCycleMid)
        pwm.setduty(rightMotorForwardPin, pwmDutyCycleSlow)
        pwm.setduty(rightMotorBackwardPin, 0)
    elseif data == "C" then                     -- Move backward & Turn left fast
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, pwmDutyCycleSlow)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, pwmDutyCycleMid)
    elseif data == "D" then                     -- Move backward & Turn left fast
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, pwmDutyCycleMid)
        pwm.setduty(rightMotorBackwardPin, pwmDutyCycleSlow)
        pwm.setduty(rightMotorForwardPin, 0)

    else
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, 0)
     
    end
end

function stop()
        pwm.setduty(leftMotorForwardPin, 0)
        pwm.setduty(leftMotorBackwardPin, 0)
        pwm.setduty(rightMotorForwardPin, 0)
        pwm.setduty(rightMotorBackwardPin, 0)
end
