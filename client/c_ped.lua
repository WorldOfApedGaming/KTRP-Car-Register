local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    if not DoesEntityExist(carPed) then
        RequestModel( GetHashKey(Ped.model) )
        while ( not HasModelLoaded( GetHashKey(Ped.model) ) ) do
            Wait(1)
        end
        carPed = CreatePed(1, Ped.hash, Ped.coords, true, true)
        FreezeEntityPosition(carPed, true)
        SetEntityInvincible(carPed, true)
        SetBlockingOfNonTemporaryEvents(carPed, true)
    end
    exports['qb-target']:AddTargetEntity(carPed, {
        options = {
            {
                num = 1,
                type = "client",
                event = "kt-carreginsure:client:carRegister",
                label = "Car Register",
                icon = 'fa-regular fa-building',
            },
            {
                num = 2,
                type = "client",
                event = "kt-carreginsure:client:carInsurance",
                label = "Car Insurance",
                icon = 'fa-regular fa-building',
            },
        },
        distance = 1.5
    })
 end)