require "resources/essentialmode/lib/MySQL"
MySQL:open("localhost", "gta5_gamemode_essential", "root", "fanny123")

RegisterServerEvent("es:coords")
AddEventHandler("es:coords", function( PlayerName , x , y , z )
        MySQL:executeQuery("UPDATE user_position SET x_pos='@x' WHERE identifier = '@username' AND y_pos = '@y' AND z_pos = '@z'",{['@usersame'] = player, ['@x'] = x, ['@y'] = y, ['@z'] = z})
                end)

local function savePlayerCoords()
    SetTimeout(1000, function()
        TriggerEvent("es:savepos", function(users)
                for k,v in pairs(users)do
                    MySQL:executeQuery("UPDATE user_position SET x_pos='@x' WHERE identifier = '@username' AND y_pos = '@y' AND z_pos = '@z'",{['@usersame'] = player, ['@x'] = x, ['@y'] = y, ['@z'] = z})
                        end
                    
                    end)
            savePlayerCoords
        end)
    end