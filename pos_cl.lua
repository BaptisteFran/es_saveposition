--RegisterNetEvent("es:savepos")
--AddEventHandler("es:savepos", function()
local oldPos
local PlayerId = getPlayerFromId()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		local pos = GetEntityCoords(GetPlayerPed(-1))

		if(oldPos ~= pos)then
			TriggerServerEvent('es:coords', pos.x, pos.y, pos.z)
                                oldPos = pos
                                end
                        end
                end)
