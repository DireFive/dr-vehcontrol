DR = {}

----------------------------------------------------------------------
----------------------------------------------------------------------
            -- Script Made by DireFive Development --
----------------------------------------------------------------------
----------------------------------------------------------------------


DR.OpenVehControlCommand = "vehcontrol"   --- Command for open menu 
DR.Keybind = "M"        -- Keybind for open Menu

----- Command you can change in dr-vehcontrol/client/commands.lua

DR.LOCALES = {          --- There are FULL Translate 
    Locales_Title = "Vehicle Control",
    You_are_not_in_vehicle = "You are not in vehicle.",
    Engine = "Engine ON/OFF",
    EngineON = "Engine Turn ON",
    EngineOFF = "Engine Turn OFF",
    Vehicle_Plate = "Plate",
    Vehicle_Health = "Vehicle Health",
    Vehicle_Body = "Body",
    Vehicle_Engine = "Engine",
    T_F_L = "Front Left Tyre",
    T_F_R = "Front Right Tyre",
    T_B_L = "Back Left Tyre",
    T_B_R =  "Back Right Tyre",
    L_F_W = "Left Front Window",
    R_F_W = "Right Front Window",
    L_B_W = "Left Back Window",
    R_B_W = "Right Back Window",
    All_Windows = "All windows",
    Hood = "Hood",
    Trunk = "Trunk",
    L_F_D = "Left Front Door", 
    R_F_D = "Right Front Door",
    L_B_D = "Left Back Door",
    R_B_D = "Right Back Door",
    All_Doors = "All Doors",
    
}





function DR.Notify(title,message,type)   --- Notifcation Export you can change Here
    lib.notify({
        title = title,
        description = message,
        type = type,
    })
end