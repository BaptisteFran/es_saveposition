--RegisterNetEvent("es:savepos")
--AddEventHandler("es:savepos", function()
--local PlayerId = getPlayerFromId()
local x = 0.0
local y = 0.0
local z = 0.0


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		local pos = GetEntityCoords(GetPlayerPed(-1))
		local x = pos.x
		local y = pos.y
		local z = pos.z

			
-- Setting new X position
		if(x ~= pos.x)then
			TriggerServerEvent('es:coords', pos.x)
                                x = pos.x
                                end
-- Setting new Y position			
		if(y ~= pos.y)then
			TriggerServerEvent('es:coords', pos.y)
                                y = pos.y
                                end
-- Setting new Z position			
		if(z ~= pos.z)then
			TriggerServerEvent('es:coords', pos.z)
                                z = pos.z
                                end
                        end
                end)

       
