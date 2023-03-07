var sessionTime = 0;

setInterval(function() {
    sessionTime += 1;
    document.getElementById('session-time-value').innerHTML = sessionTime;
}, 1000);

setInterval(function() {
    document.getElementById('players-count-value').innerHTML = GetNumPlayerIndices();
}, 1000);

RegisterNetEvent('playerSpawned');
AddEventHandler('playerSpawned', function() {
    var playerId = GetPlayerServerId(PlayerId());
    document.getElementById('player-id-value').innerHTML = playerId;
});
