require "resources/essentialmode/lib/MySQL"
MySQL:open("localhost", "gta5_gamemode_essential", "root", "password")

--RegisterServerEvent("es:coords")
--AddEventHandler("es:coords", function( PlayerId , x , y , z )


-- Should i start with this ?

--[[RegisterServerEvent('firstcoords')
AddEventHandler('firstcoords', function(player, x, y, z)
	MySQL:executeQuery("INSERT INTO user_position (identifier, x_pos, y_pos, z_pos) VALUES ('@username', '@x', '@y', '@z'),{['@username'] = player, ['@x'] = 0.0, ['@y'] = 0.0, ['@z'] = 0.0})
			end)]]--


RegisterServerEvent('es:coords')
AddEventHandler('es:coords', function(player, x, y, z)
	--if(Users[source])then
		--Users[source]:setCoords(x, y, z)
	        MySQL:executeQuery("INSERT INTO user_position (identifier,x_pos,y_pos,z_pos) VALUES ('@username','@x','@y','@z') ON DUPLICATE KEY UPDATE x_pos='@x', y_pos='@y', z_pos='@z';",{['@usersame'] = player, ['@x'] = x, ['@y'] = y, ['@z'] = z})
                end)

	end
