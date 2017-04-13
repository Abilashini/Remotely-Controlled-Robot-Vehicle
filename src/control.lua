
light1 = 7
light2 = 8

gpio.mode(light1,gpio.OUTPUT)
gpio.mode(light2,gpio.OUTPUT)

function lightOn(data)
    if data == "N" then                     -- Light on
        gpio.write(light1, gpio.HIGH)
        gpio.write(light2, gpio.HIGH)
    elseif data == "O" then
        gpio.write(light1, gpio.LOW)
        gpio.write(light2, gpio.LOW)
  
    end
end