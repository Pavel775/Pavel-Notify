-- Comando de ejemplo para enviar una notificación a todos los jugadores
RegisterCommand('notifyall', function(source, args, rawCommand)
    local message = table.concat(args, ' ')
    TriggerClientEvent('pavel-notify:show', -1, 'Anuncio', message, 'info', 7000)
end, false)

-- Evento de ejemplo para enviar una notificación a un jugador específico
RegisterNetEvent('pavel-notify:sendToPlayer')
AddEventHandler('pavel-notify:sendToPlayer', function(playerId, title, message, type, duration)
    TriggerClientEvent('pavel-notify:show', playerId, title, message, type, duration)
end)
TriggerEvent('pavel-notify:sendToPlayer', targetPlayerId, 'Título', 'Mensaje personalizado', 'success', 5000)