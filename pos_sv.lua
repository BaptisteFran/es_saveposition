require "resources/essentialmode/lib/MySQL"
MySQL:open("localhost", "gta5_gamemode_essential", "root", "password")

--RegisterServerEvent("es:coords")
--AddEventHandler("es:coords", function( PlayerId , x , y , z )

RegisterServerEvent('es:coords')
AddEventHandler('es:coords', function(x, y, z)
	if(Users[source])then
		Users[source]:setCoords(x, y, z)
                MySQL:executeQuery("UPDATE user_position SET x_pos='@x', y_pos = '@y', z_pos = '@z' WHERE identifier = '@username'",{['@usersame'] = Users[source], ['@x'] = x, ['@y'] = y, ['@z'] = z})
                end)

	end
end)

