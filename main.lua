AstrologicalSigns = RegisterMod("Astrological Signs", 1)
local mod = AstrologicalSigns
local game = Game()

CollectibleType.COLLECTIBLE_OPHIUCHUS = Isaac.GetItemIdByName("Ophiuchus")
CollectibleType.COLLECTIBLE_CHIRON = Isaac.GetItemIdByName("Chiron")
CollectibleType.COLLECTIBLE_CERES = Isaac.GetItemIdByName("Ceres")
CollectibleType.COLLECTIBLE_PALLAS = Isaac.GetItemIdByName("Pallas")
CollectibleType.COLLECTIBLE_JUNO = Isaac.GetItemIdByName("Juno")
CollectibleType.COLLECTIBLE_VESTA = Isaac.GetItemIdByName("Vesta")

include("lua/items/Ophiuchus.lua")
include("lua/items/Chiron.lua")
include("lua/items/Ceres.lua")
include("lua/items/Pallas.lua")
include("lua/items/Juno.lua")
include("lua/items/Vesta.lua")

-- prevent shaders crash
mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, function()
    if #Isaac.FindByType(EntityType.ENTITY_PLAYER) == 0 then
        Isaac.ExecuteCommand("reloadshaders")
    end
end)

if EID then
	include("lua/eid.lua")
end

if Encyclopedia then
	include("lua/encyclopedia.lua")
end