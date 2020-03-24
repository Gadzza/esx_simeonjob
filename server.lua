
-- made by Uwu Hentai | Uwu Hentai#4312 
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)	
RegisterServerEvent("uwu:simeonda")
AddEventHandler("uwu:simeonda", function()
    local uwubulan = math.random(0, 2)
    local banutiilanbajat = math.random(1, 3000)
    local xPlayer = ESX.GetPlayerFromId(source)

    if uwubulan >= 0 and uwubulan <= 2 then
		xPlayer.addMoney(banutiilanbajat)
    end
end)