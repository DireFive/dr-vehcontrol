RegisterNetEvent('dr-vehcontrol:info', function()
  local vehicle = GetVehiclePedIsIn(PlayerPedId(),false)
  lib.registerContext({ 
    id = 'dr-vehcontrol:info',
    title = DR.LOCALES.Locales_Title,
    menu = 'dr-vehcontrol',
    options = {
      {
        title =  DR.LOCALES.Vehicle_Plate.. ": " .. GetVehicleNumberPlateText(vehicle) .. "",
      },
      {
        title = DR.LOCALES.Vehicle_Health,
        description = DR.LOCALES.Vehicle_Body .. ": " .. math.ceil(GetVehicleHealthPercentage(vehicle)) .. " \n" .. DR.LOCALES.Vehicle_Engine .. ": ".. math.ceil(GetVehicleEngineHealth(vehicle)) .. "\n ".. DR.LOCALES.T_F_L .. ": " .. math.ceil(GetVehicleWheelHealth(vehicle, 0)) .. "\n" .. DR.LOCALES.T_F_R .. ": " .. math.ceil(GetVehicleWheelHealth(vehicle, 1)) .. "\n ".. DR.LOCALES.T_B_L .. ": " .. math.ceil(GetVehicleWheelHealth(vehicle, 2)) .. "\n" .. DR.LOCALES.T_B_R ..": " .. math.ceil(GetVehicleWheelHealth(vehicle, 3)) ,
      },
    }
  })
 
  lib.showContext('dr-vehcontrol:info')
end)


RegisterNetEvent('dr-vehcontrol:doors', function()
    lib.registerContext({
      id = 'dr-vehcontrol:doors',
      title = DR.LOCALES.Locales_Title,
      menu = 'dr-vehcontrol',
      options = {
        {
          title = DR.LOCALES.Hood,
          onSelect = function()
              SetVehicleDoor(4)
              lib.showContext('dr-vehcontrol:doors')
          end,
        },
        {
          title = DR.LOCALES.Trunk,
          onSelect = function()
              SetVehicleDoor(5)
              lib.showContext('dr-vehcontrol:doors')
          end,
        },
        {
            title = DR.LOCALES.L_F_D,
            onSelect = function()
                SetVehicleDoor(0)
                lib.showContext('dr-vehcontrol:doors')
            end,
          },
          {
            title = DR.LOCALES.R_F_D,
            onSelect = function()
                SetVehicleDoor(1)
                lib.showContext('dr-vehcontrol:doors')
            end,
          },
          { 
            title = DR.LOCALES.L_B_D,
            onSelect = function()
                SetVehicleDoor(2)
                lib.showContext('dr-vehcontrol:doors')
            end,
          },
          {
            title = DR.LOCALES.R_B_D,
            onSelect = function()
                SetVehicleDoor(3)
                lib.showContext('dr-vehcontrol:doors')
            end,
          },

          {
            title = DR.LOCALES.All_Doors,
            onSelect = function()
              for allDoor = 0, 5 do
                SetVehicleDoor(allDoor)
              end
                lib.showContext('dr-vehcontrol:doors')
            end,
          },
    
      }
    })
   
    lib.showContext('dr-vehcontrol:doors')
  end)


  RegisterNetEvent('dr-vehcontrol:windows', function()
    lib.registerContext({ 
      id = 'dr-vehcontrol:windows',
      title = DR.LOCALES.Locales_Title,
      menu = 'dr-vehcontrol',
      options = {
        {
          title = DR.LOCALES.L_F_W, 
          onSelect = function()
            SetWindow(0)
              lib.showContext('dr-vehcontrol:windows')
          end,
        },
        {
            title = DR.LOCALES.R_F_W,
            onSelect = function()
                SetWindow(1)
                lib.showContext('dr-vehcontrol:windows')
            end,
          },
          {
            title = DR.LOCALES.L_B_W,
            onSelect = function()
                SetWindow(2)
                lib.showContext('dr-vehcontrol:windows')
            end,
          },
          { 
            title = DR.LOCALES.R_B_W,
            onSelect = function()
                SetWindow(3)
                lib.showContext('dr-vehcontrol:windows')
            end,
          },
          {
            title = DR.LOCALES.All_Windows,
            onSelect = function()
              for allwindows = 0, 3 do
                SetWindow(allwindows)
              end
                lib.showContext('dr-vehcontrol:windows')
            end,
          },
    
      }
    })
   
    lib.showContext('dr-vehcontrol:windows')
  end)
  

RegisterNetEvent('dr-vehcontrol:open', function()
    lib.registerContext({
      id = 'dr-vehcontrol',
      title = DR.LOCALES.Locales_Title,
      menu = 'dr-vehcontrol',
      options = {
        {
          title = DR.LOCALES.Engine,
          onSelect = function()
            engine()
            lib.showContext('dr-vehcontrol')
          end,
        },
        {
            title = "Doors",
            onSelect = function()
                TriggerEvent("dr-vehcontrol:doors")
            end,
          },
          {
            title = "Windows",
            onSelect = function()
                TriggerEvent("dr-vehcontrol:windows")
            end,
          },
          {
            title = "Vehicle Info",
            onSelect = function()
                TriggerEvent("dr-vehcontrol:info")
            end,
          },
      }
    })
   
    lib.showContext('dr-vehcontrol')
  end)




