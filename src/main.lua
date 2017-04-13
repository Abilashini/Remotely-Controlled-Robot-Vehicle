dofile("motor.lua")
dofile("sensor.lua")
dofile("control.lua")
dofile("network.lua")

print("start")
stop()

connectToAccessPoint()
startServer()

  
--
--dofile("sonar.lua")
--print("started")
--
--device =sonar.init()
--
--tmr.alarm(0, 1000, 1, 
--    function() 
--        avg= device.measure_avg()
--        print(avg.average1) 
--        print(avg.average2) 
--    end
--)




--    
--dofile("sonar1.lua")
--setup ( )
--while (1) do
--   loop ( )
--end
