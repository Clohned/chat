ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  Citizen.Wait(0)
  end
end)
-------------------------------
      -- Event --
-------------------------------
RegisterNetEvent('cmd:says')
AddEventHandler('cmd:says', function(playerId, name, message, coords)
  local lCoords = GetEntityCoords(GetPlayerPed(-1))
  local eCoords = coords
  local distIs  = Vdist(lCoords.x, lCoords.y, lCoords.z, eCoords.x, eCoords.y, eCoords.z)

  if(distIs <= 20) then
  TriggerEvent('chat:addMessage', {
      template = '<div style="color: rgba(255, 255, 255, 1); font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word;">* {0} says: {1} </div>',
      args = { name, message }
    })
	elseif (distIs <= 20) then
    TriggerEvent('chat:addMessage', {
      template = '<div style="color: rgba(255, 255, 255, 1); font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word;">* {0} says: {1} </div>',
      args = { name, message }
    })
    print(distIs)
	end
end)