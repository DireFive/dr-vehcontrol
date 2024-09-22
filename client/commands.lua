RegisterCommand("engine",function()
    engine()
end)

RegisterCommand("hood",function()
    SetVehicleDoor(4)
end)

RegisterCommand("trunk",function()
    SetVehicleDoor(5)
end)

RegisterCommand("door1",function()
    SetVehicleDoor(0)
end)

RegisterCommand("door2",function()
    SetVehicleDoor(1)
end)

RegisterCommand("door3",function()
    SetVehicleDoor(2)
end)

RegisterCommand("door4",function()
    SetVehicleDoor(3)
end)

RegisterCommand("alldoors",function()
    for i = 0, 5 do
        SetVehicleDoor(i)
      end
end)

RegisterCommand("window1",function()
    SetWindow(0)
end)

RegisterCommand("window2",function()
    SetWindow(1)
end)

RegisterCommand("window3",function()
    SetWindow(2)
end)

RegisterCommand("window4",function()
    SetWindow(3)
end)

RegisterCommand("allwindow",function()
    for all = 0, 3 do
        SetWindow(i)
      end
end)

RegisterCommand(DR.OpenVehControlCommand,function()
    local pedInVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
    if pedInVehicle then
    TriggerEvent("dr-vehcontrol:open")
    else
        DR.Notify(DR.LOCALES.Locales_Title, DR.LOCALES.You_are_not_in_vehicle, "error")
    end
end)

RegisterKeyMapping(DR.OpenVehControlCommand, DR.LOCALES.Locales_Title, 'keyboard', DR.Keybind)