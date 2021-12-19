local mod = AstrologicalSigns

function mod:GetVesta(player, cacheFlag)
	if player:HasCollectible(CollectibleType.COLLECTIBLE_VESTA) then
		if cacheFlag & CacheFlag.CACHE_TEARFLAG == CacheFlag.CACHE_TEARFLAG then
			player.TearFlags = player.TearFlags | TearFlags.TEAR_SPECTRAL | TearFlags.TEAR_SPLIT | TearFlags.TEAR_QUADSPLIT
		end
		if cacheFlag & CacheFlag.CACHE_DAMAGE == CacheFlag.CACHE_DAMAGE then
			player.Damage = player.Damage * 1.5
		end
		if cacheFlag & CacheFlag.CACHE_TEARCOLOR == CacheFlag.CACHE_TEARCOLOR then
			player.TearColor = Color(1, 1, 1, 0.8, 0, 0, 0)
		end
	end
end

mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.GetVesta)

function mod:tearSize(EntityTear)
    local player = EntityTear.Parent:ToPlayer()
	if (player and player:HasTrinket(TrinketType.TRINKET_PULSE_WORM) and player:HasCollectible(CollectibleType.COLLECTIBLE_VESTA)) then
		EntityTear.Scale = EntityTear.Scale * 0.22
    elseif (player and player:HasCollectible(CollectibleType.COLLECTIBLE_VESTA)) then
		local sprite = EntityTear:GetSprite()
		EntityTear.Scale = EntityTear.Scale * 0
		sprite:Load("gfx/vesta_tears.anm2")
		sprite:ReplaceSpritesheet(0, "gfx/vesta_tears.png")
		sprite:LoadGraphics()
		sprite:Play("Rotate0", true) -- thanks @Connor#2143!
    end
end

mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, mod.tearSize)