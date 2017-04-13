ssid = "chanaka"
password = ""

listenPort = 3000

remoteIP = "192.168.43.156"
remotePort = 4000

function connectToAccessPoint()
    print("Connecting to Access Point")
    wifi.setmode(wifi.STATION)
    wifi.sta.config(ssid, password)
    wifi.sta.connect()

    tmr.alarm(1, 1000, tmr.ALARM_AUTO, function() 
        if wifi.sta.getip() == nil then 
            print("Trying Connect to Router, Waiting...")
        else 
          
            local ip, subnetMask, defaultGateway = wifi.sta.getip()
            print("Connected to Wifi Access Point")
            print("IP : "..ip)
            print("Subnet Mask : "..subnetMask)
            print("Default Gateway : "..defaultGateway)
            tmr.unregister(1)
            startSendingSensorData()
            collectgarbage()
            startSendingSensorData()
        end 
    end)
end

function sendOverTCPConnection(data)
    local sendConn = net.createConnection(net.TCP, 0)
    sendConn:connect(remotePort, remoteIP)
    sendConn:send(data)
    sendConn:on("sent", function(conn) 
        conn:close() 
    end)
end

function startServer()
    print("Starting server")
    local server = net.createServer(net.TCP)
    server:listen(listenPort, function(conn)
        conn:on("receive",function(conn, payload)
            if payload ~= nil then
                adjustMotors(payload)
                lightOn(payload)
                tmr.delay(50)
            end
        end)
    end)
end
