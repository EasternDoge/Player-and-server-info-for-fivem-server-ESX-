Citizen.CreateThread(function()
    while true do
        -- Get the player's ID
        local playerId = GetPlayerServerId(PlayerId())
        
        -- Get the session time in seconds
        local sessionTime = GetGameTimer() / 1000
        
        -- Get the number of players online
        local playersCount = #GetActivePlayers()
        
        -- Trigger an event to update the NUI with the new values
        SendNUIMessage({
            type = 'updatePlayerInfo',
            playerId = playerId,
            sessionTime = sessionTime,
            playersCount = playersCount
        })
        
        -- Wait for 1 second before updating again
        Citizen.Wait(1000)
    end
end)
