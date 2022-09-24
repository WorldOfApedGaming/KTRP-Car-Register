local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("kt-carreginsure:client:carRegister",function()
    local Player = QBCore.Functions.GetPlayerData()
    if IsPedInAnyVehicle(PlayerPedId(),false) then
        local veh = GetVehiclePedIsIn(PlayerPedId(),false)
        local vehPlate = GetVehicleNumberPlateText(veh)
        TriggerServerEvent("kt-carreginsure:server:getVehDetails",vehPlate)
    end
end)