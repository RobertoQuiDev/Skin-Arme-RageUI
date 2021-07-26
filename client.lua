ESX = nil
Roberto = {}
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)
local playerPed = PlayerPedId()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	PlayerLoaded = true
end)


-- vip = false 


-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait( 2000 )

--         if NetworkIsSessionStarted() then
--             TriggerServerEvent("checkvip", source)
--         end
--     end
-- end )


-- RegisterNetEvent("VIP:Set")
-- AddEventHandler("VIP:Set", function()
-- vip = true
-- Roberto.Notification("Status VIP: Activé")
-- end)

Roberto.Notification = function(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(msg)
    DrawNotification(false, true)
end


    RMenu.Add('Roberto', 'main', RageUI.CreateMenu("Menu skin armes", " "))

    Citizen.CreateThread(function()
        while true do
            
            RageUI.IsVisible(RMenu:Get('Roberto', 'main'), true, true, true, function()
            -- or
            RageUI.Button("Or", "~y~Mettre un skin Or !", {RightLabel = "~y~→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    weapon = GetSelectedPedWeapon(playerPed, true)
                    Roberto.TintWeapon(weapon, 2,"Or")
                end
            end)
            --bleu
            RageUI.Button("Bleu", "~b~Mettre un skin Bleu !", {RightLabel = "~b~→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    weapon = GetSelectedPedWeapon(playerPed, true)
                    Roberto.TintWeapon(weapon, 5,"Bleu")
                end
            end)
            --rose
            RageUI.Button("Rose", "~q~Mettre un skin Rose !", {RightLabel = "~q~→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    weapon = GetSelectedPedWeapon(playerPed, true)
                    Roberto.TintWeapon(weapon, 3,"Rose")
                end
            end)
            --orange
            RageUI.Button("Orange", "~o~Mettre un skin Orange !", {RightLabel = "~o~→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    weapon = GetSelectedPedWeapon(playerPed, true)
                    Roberto.TintWeapon(weapon, 6,"Orange")
                end
            end)
            --vert
            RageUI.Button("Vert", "~g~Mettre un skin Vert !", {RightLabel = "~g~→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    weapon = GetSelectedPedWeapon(playerPed, true)
                    Roberto.TintWeapon(weapon, 1,"Vert")
                end
            end)
            --platine
            RageUI.Button("Platine", "~m~Mettre un skin Platine !", {RightLabel = "~m~→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    weapon = GetSelectedPedWeapon(playerPed, true)
                    Roberto.TintWeapon(weapon, 7,"Platine")
                end
            end)                       
            end, function()
                ---Panels
            end, 1)
            
            Citizen.Wait(0)
        end
    end)
        



        Roberto.TintWeapon = function(model, tint,color)
            for _, TintNum in pairs(Config.weaponTintList) do
                if model == GetHashKey(TintNum) then
                    local playerPed = PlayerPedId()
                    SetPedWeaponTintIndex(playerPed, GetHashKey(TintNum), tint)
                    ok1(color)
                end
                if model == -1569615261 then
                    Roberto.Notification("~r~Ton main ne peux pas avoir de skin ):")
                end
            end
            
        end


        function ok1(color)
            if color == "Or" then
            Roberto.Notification("~g~Ton arme est en ".. color .. " (:")
            else
                Roberto.Notification("~g~Ton arme est ".. color .. " (:")
            end
            if Config.animation then
                RequestAnimDict("anim@mp_player_intcelebrationmale@shadow_boxing")
                TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@shadow_boxing", "shadow_boxing", 8.0, 8.0, 3000, 50, 0, false, false, false)
            end
            if Config.particul then
                local coords = GetEntityCoords(GetPlayerPed(PlayerId()))
                RequestNamedPtfxAsset('scr_rcbarry2')
                UseParticleFxAssetNextCall('scr_rcbarry2')
                StartParticleFxNonLoopedAtCoord_2('scr_clown_death', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 5.0, false, false, false)
            end
        end



        RegisterCommand("skinarme", function()
            RageUI.Visible(RMenu:Get('Roberto', 'main'), not RageUI.Visible(RMenu:Get('Roberto', 'main')))
        end)
