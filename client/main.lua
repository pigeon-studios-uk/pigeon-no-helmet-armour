--[[
    Pigeon No Helmet Armour: client.

    GTA gives a ped wearing a helmet protection from headshots. This includes many clothing packs' helmets,
    because they reuse GTA's helmet props. Ped config flag 438 (CPED_CONFIG_FLAG_DisableHelmetArmor) turns
    that protection off for the ped it's set on.

    The flag is set on each player's own character, the one their game controls. Every player runs the
    resource, so every player's helmet loses its protection.
]]

local RESOURCE = GetCurrentResourceName()
local DISABLE_HELMET_ARMOUR = 438          -- CPED_CONFIG_FLAG_DisableHelmetArmor

local function apply(enabled)
    SetPedConfigFlag(PlayerPedId(), DISABLE_HELMET_ARMOUR, enabled)
end

CreateThread(function()
    while true do
        apply(true)
        Wait(math.floor((Config.ReapplySeconds or 1.0) * 1000))
    end
end)

-- A new character after respawning: apply straight away rather than waiting for the next pass.
AddEventHandler('playerSpawned', function()
    apply(true)
end)

-- Give helmets their protection back when the resource stops.
AddEventHandler('onResourceStop', function(resource)
    if resource == RESOURCE then apply(false) end
end)
