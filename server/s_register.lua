local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("kt-carreginsure:server:getVehDetails",function(plate)
    local det = MySQL.Async.fetchAll("Select * from player_vehicles where plate = ?",{plate})
    print(det.id)
end)