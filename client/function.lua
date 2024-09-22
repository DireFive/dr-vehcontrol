function engine()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(),false)
if IsPedInAnyVehicle(PlayerPedId()) then
    if GetIsVehicleEngineRunning(vehicle) then
        DR.Notify(DR.Locales_Title,DR.LOCALES.EngineOFF, "error")
        SetVehicleEngineOn(vehicle,false,false,true)
    else
        DR.Notify(DR.Locales_Title,DR.LOCALES.EngineON, "success")
        SetVehicleEngineOn(vehicle,true,false,true)
    end
else
    DR.Notify(DR.Locales_Title,DR.LOCALES.You_are_not_in_vehicle, "error")
end
end

function SetVehicleDoor(door)
    local vehicle = GetVehiclePedIsIn(PlayerPedId(),false)
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        if GetVehicleDoorAngleRatio(vehicle, door) > 0.0 then
            SetVehicleDoorShut(vehicle, door, false, false)
        else
            SetVehicleDoorOpen(vehicle, door, false, false)
        end
    else
        DR.Notify(DR.Locales_Title,DR.LOCALES.You_are_not_in_vehicle, "error")
    end
end

function SetWindow(windows)
    local vehicle = GetVehiclePedIsIn(PlayerPedId(),false)
        if IsPedInAnyVehicle(PlayerPedId()) then
    if IsVehicleWindowIntact(vehicle, windows) == 1 then
        RollDownWindow(vehicle, windows)
    else
        RollUpWindow(vehicle, windows)
        end
    else
    DR.Notify(DR.Locales_Title,DR.LOCALES.You_are_not_in_vehicle, "error")
    end
end

