local mod = AstrologicalSigns
local game = Game()
local rng = RNG()

function mod:JunoTears(EntityTear, collider) 
	for i = 0, game:GetNumPlayers() - 1 do
		local player = game:GetPlayer(i)
		if player:HasCollectible(CollectibleType.COLLECTIBLE_JUNO) then
			if (collider:IsEnemy() and collider:IsVulnerableEnemy() and collider:IsActiveEnemy()) then
				for i = 0, Game():GetNumPlayers() - 1 do
					local player = Game():GetPlayer(i)
					local rollJuno = rng:RandomInt(100)
					if player.Luck > 11 then
						if rng:RandomInt(4) == 1 then
							player:UseActiveItem(CollectibleType.COLLECTIBLE_ANIMA_SOLA, UseFlag.USE_NOANIM, -1)
						end
					elseif rollJuno <= (player.Luck*2+2) then
						player:UseActiveItem(CollectibleType.COLLECTIBLE_ANIMA_SOLA, UseFlag.USE_NOANIM, -1)
					end
				end
			end
		end
	end
end

mod:AddCallback(ModCallbacks.MC_PRE_TEAR_COLLISION, mod.JunoTears)				-- Tears
mod:AddCallback(ModCallbacks.MC_PRE_KNIFE_COLLISION, mod.JunoTears)				-- Mom's Knife
mod:AddCallback(ModCallbacks.MC_POST_LASER_INIT, function(EntityLaser)			-- Brimstone and other lasers
	for i = 0, game:GetNumPlayers() - 1 do
		local player = game:GetPlayer(i)
		if player:HasCollectible(CollectibleType.COLLECTIBLE_JUNO) then
			for i = 0, Game():GetNumPlayers() - 1 do
				local player = Game():GetPlayer(i)
				local rollJuno = rng:RandomInt(100)
				if player.Luck > 11 then
					if rng:RandomInt(4) == 1 then
						player:UseActiveItem(CollectibleType.COLLECTIBLE_ANIMA_SOLA, UseFlag.USE_NOANIM, -1)
					end
				elseif rollJuno <= (player.Luck*2+2) then
					player:UseActiveItem(CollectibleType.COLLECTIBLE_ANIMA_SOLA, UseFlag.USE_NOANIM, -1)
				end
			end
		end
	end
end)