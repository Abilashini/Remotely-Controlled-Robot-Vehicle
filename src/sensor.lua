trig = 0
echo1 = 5
echo2 = 6
echo3 = 7
echo4 = 8

timeStart = 0
timeEnd1 = 0
timeEnd2 = 0
timeEnd3 = 0
timeEnd4 = 0

gpio.mode(trig, gpio.OUTPUT)

gpio.mode(echo1, gpio.INT)
gpio.mode(echo2, gpio.INT)


gpio.trig(echo1, "down", function(level)
    timeEnd1 = tmr.now()
end)
gpio.trig(echo2, "down", function(level)
    timeEnd2 = tmr.now()
end)



tmr.register(4, 100, tmr.ALARM_SEMI, function()
    time1 = timeEnd1 - timeStart
    time2 = timeEnd2 - timeStart
    print(time1..","..time2)
    sendOverTCPConnection(time1..","..time2)

end)

function startSendingSensorData()
    tmr.alarm(2, 1000, tmr.ALARM_AUTO, function()
        timeStart = tmr.now()
        gpio.write(trig, gpio.HIGH)
        tmr.delay(10)
        gpio.write(trig, gpio.LOW)
        tmr.start(4)
    end)
end
