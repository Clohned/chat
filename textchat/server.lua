ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-------------------------------
        -- Template --
-------------------------------
local function TestCommand(playerId, args)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	if not xPlayer then return end

	local plyPed = GetPlayerPed(xPlayer.source)
	local message = args

	if #message == 0 then
			return print('Nothing inputted.')
	end

  if GetConvar("onesync_enableInfinity", "false") == "true" then
    local players = GetPlayers()
    for i = 1, #players do
      if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
        TriggerClientEvent('chat:addMessage', players[i], {
            template = '<div style="color: rgba(165, 218, 56, 1); font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; "><b>(TEST) {0}: {1}</b></div>',
            args = { xPlayer.getName(), table.concat(message, " ") }
        })
      end
    end
  end
end

RegisterCommand('testyo', TestCommand)
-------------------------------
        -- OOC --
-------------------------------
local function OOC(playerId, args)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	if not xPlayer then return end

	local plyPed = GetPlayerPed(xPlayer.source)
	local message = args

	if #message == 0 then
			return print('Nothing inputted.')
	end

  if GetConvar("onesync_enableInfinity", "false") == "true" then
    local players = GetPlayers()
    for i = 1, #players do
      if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
        TriggerClientEvent('chat:addMessage', players[i], {
            template = '<div style="color: #81888c; font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; "><b>* (( {0}: {1} ))</b></div>',
            args = { xPlayer.getName(), table.concat(message, " ") }
        })
      end
    end
  end
end

RegisterCommand('b', OOC)
-------------------------------
        -- /me --
-------------------------------
local function Me(playerId, args)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	if not xPlayer then return end

	local plyPed = GetPlayerPed(xPlayer.source)
	local message = args

	if #message == 0 then
			return print('Nothing inputted.')
	end

  if GetConvar("onesync_enableInfinity", "false") == "true" then
    local players = GetPlayers()
    for i = 1, #players do
      if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
        TriggerClientEvent('chat:addMessage', players[i], {
            template = '<div style="color: rgba(200, 218, 168, 1); font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; "><b>* {0} {1}</b></div>',
            args = { xPlayer.getName(), table.concat(message, " ") }
        })
      end
    end
  end
end

RegisterCommand('me', Me)
-------------------------------
        -- /do --
-------------------------------
local function Do(playerId, args)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	if not xPlayer then return end

	local plyPed = GetPlayerPed(xPlayer.source)
	local message = args

	if #message == 0 then
			return print('Nothing inputted.')
	end

  if GetConvar("onesync_enableInfinity", "false") == "true" then
    local players = GetPlayers()
    for i = 1, #players do
      if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
        TriggerClientEvent('chat:addMessage', players[i], {
            template = '<div style="color: #cfa846; font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; ">* {0} (( {1} )) </div>',
            args = { xPlayer.getName(), table.concat(message, " ") }
        })
      end
    end
  end
end

RegisterCommand('do', Do)
-------------------------------
        -- /my --
-------------------------------
local function My(playerId, args)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	if not xPlayer then return end

	local plyPed = GetPlayerPed(xPlayer.source)
	local message = args

	if #message == 0 then
			return print('Nothing inputted.')
	end

  if GetConvar("onesync_enableInfinity", "false") == "true" then
    local players = GetPlayers()
    for i = 1, #players do
      if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
        TriggerClientEvent('chat:addMessage', players[i], {
            template = '<div style="color: #c2a3cf; font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; "><b>* {0}\'s {1}</b></div>',
            args = { xPlayer.getName(), table.concat(message, " ") }
        })
      end
    end
  end
end

RegisterCommand('my', My)
-------------------------------
        -- says --
-------------------------------
AddEventHandler('chatMessage', function(playerId, playerName, message)
	if string.sub(message, 1, string.len('/')) ~= '/' then
		CancelEvent()

		local xPlayer = ESX.GetPlayerFromId(playerId)
		if xPlayer then playerName = xPlayer.getName() end

        local output = (''):format(playerName, message)
		print(output)

		if playerId ~= nil then
			local coords = GetEntityCoords(GetPlayerPed(playerId))
			TriggerClientEvent('cmd:says', -1, playerId, playerName, message, coords)
		end
	end
end)
-------------------------------
      -- says whisper --
-------------------------------
local function SaysWhisper(playerId, args)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	if not xPlayer then return end

	local plyPed = GetPlayerPed(xPlayer.source)
	local message = args

	if #message == 0 then
			return print('Nothing inputted.')
	end

  if GetConvar("onesync_enableInfinity", "false") == "true" then
    local players = GetPlayers()
    for i = 1, #players do
      if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
        TriggerClientEvent('chat:addMessage', players[i], {
            template = '<div style="color: #c9c3c3; font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; "><b>* {0} says [low]: {1}</b></div>',
            args = { xPlayer.getName(), table.concat(message, " ") }
        })
      end
    end
  end
end

RegisterCommand('low', SaysWhisper)
-------------------------------
      -- says shout --
-------------------------------
local function SaysShout(playerId, args)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	if not xPlayer then return end

	local plyPed = GetPlayerPed(xPlayer.source)
	local message = args

	if #message == 0 then
			return print('Nothing inputted.')
	end

  if GetConvar("onesync_enableInfinity", "false") == "true" then
    local players = GetPlayers()
    for i = 1, #players do
      if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
        TriggerClientEvent('chat:addMessage', players[i], {
            template = '<div style="color: #c9c3c3; font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; "><b>* {0} says [shouts]: {1}</b></div>',
            args = { xPlayer.getName(), table.concat(message, " ") }
        })
      end
    end
  end
end

RegisterCommand('shout', SaysShout)
-------------------------------
      -- car whisper --
-------------------------------
local function CarWhisper(playerId, args)
  local xPlayer = ESX.GetPlayerFromId(playerId)
  if not xPlayer then return end

  local message = args
  if #message == 0 then
      return print('Nothing inputted.')
  end

  local plyPed = GetPlayerPed(xPlayer.source)
  local plyVeh = GetVehiclePedIsIn(plyPed)

  if plyVeh == 0 then
    return print('You must be in a vehicle to use this command.')
  end

  if GetConvar("onesync_enableInfinity", "false") == "true" then
      local players = GetPlayers()
      for i = 1, #players do

          if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
              if GetVehiclePedIsIn(targetPed, false) then
                TriggerClientEvent('chat:addMessage', players[i], {
                  template = '<div style="color: #f0d526; font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; "><b>* (Car) {0} says [low]: {1}</b></div>',
                  args = { xPlayer.getName(), table.concat(message, " ") }
                })
              end
          end
      end
  end
end

RegisterCommand('carlow', CarWhisper)
-------------------------------
      -- car shout --
-------------------------------
local function CarShout(playerId, args)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if not xPlayer then return end

    local message = args
    if #message == 0 then
        return print('Nothing inputted.')
    end

    local plyPed = GetPlayerPed(xPlayer.source)
    local plyVeh = GetVehiclePedIsIn(plyPed)

		if plyVeh == 0 then
      return print('You must be in a vehicle to use this command.')
    end

    if GetConvar("onesync_enableInfinity", "false") == "true" then
        local players = GetPlayers()
        for i = 1, #players do

            if GetPlayerRoutingBucket(players[i]) == GetPlayerRoutingBucket(xPlayer.source) then
                if GetVehiclePedIsIn(targetPed, false) then
                  TriggerClientEvent('chat:addMessage', players[i], {
                    template = '<div style="color: #f0d526; font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; "><b>* (Car) {0} says [shouts]: {1}</b></div>',
                    args = { xPlayer.getName(), table.concat(message, " ") }
                  })
                end
            end
        end
    end
end

RegisterCommand('carshout', CarShout)
-------------------------------
        -- pm --
-------------------------------
local function Message(playerId, args)
  local xPlayer = ESX.GetPlayerFromId(playerId)
  if not xPlayer then return end

  local target = args[1]
  local message = args

  local xTarget = ESX.GetPlayerFromId(target)
  if not xTarget then return end

  if xTarget.source == xPlayer.source then
    return print('No messaging yourself.')
  end

  if #message == 0 then
    return print('Enter a message perhaps?')
  end

  table.remove(message, 1)

  TriggerClientEvent('chat:addMessage', xPlayer.source, {
    template = '<div style="color: rgba(91, 193, 143, 1); font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; font-weight: bold;">PM Sent > {0} ({1}): {2}</div>',
    args = { xTarget.getName(), xTarget.source, table.concat(message, " ") }
  })

  TriggerClientEvent('chat:addMessage', xTarget.source, {
    template = '<div style="color: rgba(193, 141, 71, 1); font-family: arial; font-weight: bold; text-shadow: 0px 0px 3px #000000; width: fit-content; max-width: 100%; overflow: hidden; word-break: break-word; font-weight: bold;">PM Recieved > {0} ({1}): {2}</div>',
    args = { xPlayer.getName(), xPlayer.source, table.concat(message, " ") }
  })
end

RegisterCommand('pm', Message)
-------------------------------
       -- logging --
-------------------------------
function fleevodolog(xPlayer, text)
    local playerName = Sanitize(xPlayer.getName())

    local discord_webhook = "" -- webhook here
    if discord_webhook == '' then
      return
    end
    local headers = {
      ['Content-Type'] = 'application/json'
    }
    local data = {
      ["username"] = "Monitor",
      ["avatar_url"] = "",
      ["embeds"] = {{
        ["author"] = {
          ["name"] = playerName .. ' - ' .. xPlayer.identifier
        },
        ["color"] = 1942002,
        ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
      }}
    }
    data['embeds'][1]['description'] = text
    PerformHttpRequest(discord_webhook, function(err, text, headers) end, 'POST', json.encode(data), headers)
end

function Sanitize(str)
    local replacements = {
        ['&' ] = '&amp;',
        ['<' ] = '&lt;',
        ['>' ] = '&gt;',
        ['\n'] = '<br/>'
    }

    return str
        :gsub('[&<>\n]', replacements)
        :gsub(' +', function(s)
            return ' '..('&nbsp;'):rep(#s-1)
        end)
end

function fleevomelog(xPlayer, text)
    local playerName = Sanitize(xPlayer.getName())

    local discord_webhook = ""  -- webhook here
    if discord_webhook == '' then
      return
    end
    local headers = {
      ['Content-Type'] = 'application/json'
    }
    local data = {
      ["username"] = "Monitor",
      ["avatar_url"] = "",
      ["embeds"] = {{
        ["author"] = {
          ["name"] = playerName .. ' - ' .. xPlayer.identifier
        },
        ["color"] = 1942002,
        ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
      }}
    }
    data['embeds'][1]['description'] = text
    PerformHttpRequest(discord_webhook, function(err, text, headers) end, 'POST', json.encode(data), headers)
end

function Sanitize(str)
    local replacements = {
        ['&' ] = '&amp;',
        ['<' ] = '&lt;',
        ['>' ] = '&gt;',
        ['\n'] = '<br/>'
    }

    return str
        :gsub('[&<>\n]', replacements)
        :gsub(' +', function(s)
            return ' '..('&nbsp;'):rep(#s-1)
        end)
end