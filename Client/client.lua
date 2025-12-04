local isUiOpen = false

-- Función para mostrar notificación
function ShowNotification(title, message, type, duration)
    SendNUIMessage({
        action = 'show',
        title = title,
        message = message,
        type = type,
        duration = duration or Config.DefaultDuration
    })
    if Config.SoundEnabled then
        PlaySoundFrontend(-1, 'Event_Start_Text', 'GTAO_FM_Events_Soundset', 0)
    end
end

-- Evento para recibir notificaciones del servidor
RegisterNetEvent('pavel-notify:show')
AddEventHandler('pavel-notify:show', function(title, message, type, duration)
    ShowNotification(title, message, type, duration)
end)
TriggerEvent('pavel-notify:show', 'Título', 'Mensaje personalizado', 'error', 5000)