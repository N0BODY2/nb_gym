Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
		local sleeping = true

		for k,v in pairs(Config.Gyms) do
			for i = 1, #v.coords, 1 do
				local distance = #(coords - v.coords[i])
				if distance < 2.5 then 
					sleeping = false
                    if v.marker.active then 
                        local editedcoords = vector3(v.coords[i].x,v.coords[i].y,v.coords[i].z-v.marker.heightedit)
                        DrawMarker(v.marker.type, editedcoords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.marker.size, v.marker.color.r, v.marker.color.g, v.marker.color.b, 100, false, true, 2, false, nil, nil, false)
                    end
					if distance < 1 then 
						if v.text3d.active then
							DrawText3D(v.coords[i].x,v.coords[i].y,v.coords[i].z-v.text3d.heightedit, v.text3d.text)
						end
						if IsControlJustPressed(0,38) then 
							TaskStartScenarioInPlace(ped, v.animation.type, 0, true)
							Citizen.Wait(v.animation.time * 1000)
							ClearPedTasksImmediately(ped)
						end
					end
				end
			end
		end
		if sleeping then 
			Citizen.Wait(1500)
		end
    end
end)

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end