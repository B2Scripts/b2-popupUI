local QBCore = exports['qb-core']:GetCoreObject()

  exports("show", function(text, header, type)
    if not type then type = "info" end
    lasttext = text
    SendNUIMessage({
        type = "open",
        text = text,
        header= header
        useType = "export"
    })
end)

exports("hide", function(type)
    type = type and type or "info"
    SendNUIMessage({
        type = "close",
        useType = "export"
        --color = type,
    })
end)

CreateThread(function()
    local open =false
    local last
    local near= false
    local found= false
    while true do
        local counter= 0
        local plyPed = PlayerPedId()
            local dist = GetDistanceBetweenCoords(0.0, 0.0, 0.0, 5.0, 5.0, 5.0, false)
	        local coord = GetEntityCoords(plyPed)
            
            
        near= false
        for _ in pairs(Config.PopUpLocations) do
            counter= counter+1
            Wait(1)
            local secondVec= Config.PopUpLocations[counter].coords
            local dist = #(coord.xy - secondVec.xy)
	        if dist<5 then  
                near= true  
                    SendNUIMessage({
                    type = "open",
                    useType = "config",
                    header = Config.PopUpLocations[counter].header,
                    text= Config.PopUpLocations[counter].text
                })
            end
        end
        if not near then 
                SendNUIMessage({
                    type = "close",
                    useType = "config"
                })
        end
    end
    
end)





CreateThread(function()
    print("b2 scripts the best!!!")
end)
