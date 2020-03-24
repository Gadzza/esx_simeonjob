-- made by Uwu Hentai | Uwu Hentai#4312
-- converted by Gadzzaa | twitch.tv/gadzzaa#9949
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)	
RegisterServerEvent("gadza:simeonda")
AddEventHandler("gadza:simeonda", function()
    local moneyrecieved = math.random(1, 3000)
    local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addMoney(moneyrecieved)
end)