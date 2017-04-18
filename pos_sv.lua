require "resources/essentialmode/lib/MySQL"
MySQL:open("localhost", "gta5_gamemode_essential", "root", "password")

--RegisterServerEvent("es:coords")
--AddEventHandler("es:coords", function( PlayerId , x , y , z )

RegisterServerEvent('es:coords')
AddEventHandler('es:coords', function(x, y, z)
	if(Users[source])then
		Users[source]:setCoords(x, y, z)
                MySQL:executeQuery("UPDATE user_position SET x_pos='@x' WHERE identifier = '@username' AND y_pos = '@y' 
                AND z_pos = '@z'",{['@usersame'] = Users[source], ['@x'] = x, ['@y'] = y, ['@z'] = z})
                end)

	end
end)

        
Citizen.CreateThread(function ()
    while true do
    Citizen.Wait(1000)
        TriggerServerEvent('es:coords')
            end
        end)
