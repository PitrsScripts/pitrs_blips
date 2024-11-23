Citizen.CreateThread(function()
    for _, blip in pairs(Config.Blips) do
        local blipHandle = AddBlipForCoord(blip.coords.x, blip.coords.y, blip.coords.z)
        SetBlipSprite(blipHandle, blip.id)
        SetBlipDisplay(blipHandle, 4)
        local scale = blip.scale or 1.0
        SetBlipScale(blipHandle, scale)
        local color = blip.color or 3
        SetBlipColour(blipHandle, color)
        SetBlipAsShortRange(blipHandle, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blip.title)
        EndTextCommandSetBlipName(blipHandle)
    end
end)
