-- made by Uwu Hentai | Uwu Hentai#4312
-- converted by Gadzzaa | twitch.tv/gadzzaa#9949
local windows = {
    "prop_bollard_02a"
}

local windows2 = {}

Citizen.CreateThread(function()
    Wait(100)
    while true do
        local waittime = 1000
        local player = PlayerPedId()
        local playercoord = GetEntityCoords(player)
        local drytime = 10000  -- In Miliseconds
        
        for i = 1, #windows do
            local x = GetClosestObjectOfType(playercoord, 2.0, GetHashKey(windows[i]), false, false, false)
            local entity = nil
            if DoesEntityExist(x) then
                entity = x
                geam = GetEntityCoords(entity)
        if DoesEntityExist(entity) <= 1.5 then
            waittime = 5
            DrawText3D(geam.x, geam.y, geam.z + 1.5, '~b~[SIMEON] ~w~Wash this windows if you can! Do not worry! Not free!')  
            DrawText3D(geam.x, geam.y, geam.z + 1.3, '~b~[SIMEON] ~w~To start press ~g~[E]')  
            if IsControlJustReleased(0, 38) then
                if not windows2[entity] then
                    windows2[entity] = true
                    OpenTrashCan()
                    Wait(drytime)
                    windows2[entity] = false
                else
                    notify("~b~[SIMEON] ~o~The windows were already washed!")
                        end
                    end
                end
            end
        end
        Citizen.Wait(waittime)
    end
end)

function OpenTrashCan()
    TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_BUM_WASH", 0, true) -- SITE ANIMATII : https://gtaforums.com/topic/796181-list-of-scenarios-for-peds/
            Wait(10000)
            TriggerServerEvent("gadza:simeonda")
    ClearPedTasks(PlayerPedId())
end

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

DrawText3D = function(x, y, z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	local scale = 0.45
   
	if onScreen then
		SetTextScale(scale, scale)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextOutline()
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
        DrawText(_x,_y)
        local factor = (string.len(text)) / 370
        DrawRect(_x, _y + 0.0150, 0.030 + factor , 0.030, 66, 66, 66, 150)
	end
end