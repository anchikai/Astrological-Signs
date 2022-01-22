local Wiki = {
	Ophiuchus = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Gives the player a +0.4 Tears up, +0.3 Damage up, and a soul heart."},
			{str = "Gives the player spectral tears that move in waves, similar to wiggle worm. "},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "All synergies from wiggle worm apply to this item."},
			{str = "This item will not do anything with wiggle worm."},
		},
		{ -- Credits
			{str = "Credits", fsize = 2, clr = 3, halign = 0},
			{str = "Rework concept by Losfrail!"},
		},
	},
	Chiron = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Gives the player +0.2 Speed up."},
			{str = "Entering a new floor will give a random mapping effect."},
			{str = "Entering a boss room will select a random book effect from a list."},
			{str = "The books that can be triggered from that list are: The Book of Belial, Book of Revelations, Book of Shadows, Telepathy For Dummies, or Monster Manual."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "This item will contribute to both Spun and Bookworm."},
		},
		{ -- Credits
			{str = "Credits", fsize = 2, clr = 3, halign = 0},
			{str = "Rework concept by Losfrail!"},
		},
	},
	Ceres = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Gives the player +0.5 Damage up."},
			{str = "Tears that hit an enemy have a chance to cause the player to produce a special green creep."},
			{str = "Chance increases by 5% for each luck up you have. 5% at 0 luck, 30% at 5 luck, etc."},
			{str = "Enemies that walk over the special green creep will be slowed and a tentacle will attack them."},
			{str = "Enemies will be slowed while being attacked by the tentacle."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "Ceres tears will be fired 50% of the time at 9 luck or higher."},
			{str = "The creep will last for 3 seconds."},
			{str = "The tentacle will stay until you leave the room."},
			{str = "The tentacle may also appear if the player takes damage while producing the special creep."},
		},
		{ -- Credits
			{str = "Credits", fsize = 2, clr = 3, halign = 0},
			{str = "Rework concept by Losfrail!"},
		},
	},
	Pallas = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Isaac's tears will bounce off of the floor for awhile after floating for a short time."},
			{str = "The tears bouncing cause splash damage for every bounce."},
			{str = "Increases tear size by 20%."},
		},
		{ -- Synergies
			{str = "Synergies", fsize = 2, clr = 3, halign = 0},
			{str = "Flat Stone: doubles your tear size and gives the player a +16% Damage up."},
			{str = "C Section: Fires fetuses that will bounce off of the floor for awhile after floating for a short time."},
		},
		{ -- Credits
			{str = "Credits", fsize = 2, clr = 3, halign = 0},
			{str = "Rework concept by Losfrail!"},
		},
	},
	Juno = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Tears that hit an enemy have a chance to chain down the nearest enemy for 5 seconds, which prevents the chained enemy from acting."},
			{str = "Chance increases by 2% for each luck up you have. 2% at 0 luck, 12% at 5 luck, etc."},
			{str = "Once an enemy is chained, the effect will not proc again for 10 seconds Once the 10 seconds have passed, the item can chain an enemy again."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "At 12 luck or higher, the chance for an enemy to be chained down will always be 25%."},
		},
		{ -- Credits
			{str = "Credits", fsize = 2, clr = 3, halign = 0},
			{str = "Rework concept by Losfrail!"},
		},
	},
	Vesta = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Gives the player +50% Damage up and spectral tears."},
			{str = "Isaac's tears will become extremely small and slightly transparent."},
			{str = "Isaac's tears have a chance to split into 4 tears."},
			{str = "Chance increases by 10% for each luck up you have. 10% at 0 luck, 60% at 5 luck, etc."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "Tear size cannot be increased after picking up this item and will be permanently small."},
			{str = "- Pulse Worm can still increase tear size, albeit by very little."},
		},
		{ -- Credits
			{str = "Credits", fsize = 2, clr = 3, halign = 0},
			{str = "Rework concept by Losfrail!"},
		},
	},
}

Encyclopedia.AddItem({
	ModName = "Astrological Signs",
	Class = "Astrological Signs",
	ID = CollectibleType.COLLECTIBLE_OPHIUCHUS,
	WikiDesc = Wiki.Ophiuchus,
	Pools = {
		Encyclopedia.ItemPools.POOL_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_SHOP,
	},
})

Encyclopedia.AddItem({
	ModName = "Astrological Signs",
	Class = "Astrological Signs",
	ID = CollectibleType.COLLECTIBLE_CHIRON,
	WikiDesc = Wiki.Chiron,
	Pools = {
		Encyclopedia.ItemPools.POOL_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_SHOP,
	},
})

Encyclopedia.AddItem({
	ModName = "Astrological Signs",
	Class = "Astrological Signs",
	ID = CollectibleType.COLLECTIBLE_JUNO,
	WikiDesc = Wiki.Juno,
	Pools = {
		Encyclopedia.ItemPools.POOL_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_SHOP,
	},
})

Encyclopedia.AddItem({
	ModName = "Astrological Signs",
	Class = "Astrological Signs",
	ID = CollectibleType.COLLECTIBLE_PALLAS,
	WikiDesc = Wiki.Pallas,
	Pools = {
		Encyclopedia.ItemPools.POOL_PLANETARIUM,
	},
})

Encyclopedia.AddItem({
	ModName = "Astrological Signs",
	Class = "Astrological Signs",
	ID = CollectibleType.COLLECTIBLE_CERES,
	WikiDesc = Wiki.Ceres,
	Pools = {
		Encyclopedia.ItemPools.POOL_PLANETARIUM,
	},
})

Encyclopedia.AddItem({
	ModName = "Astrological Signs",
	Class = "Astrological Signs",
	ID = CollectibleType.COLLECTIBLE_VESTA,
	WikiDesc = Wiki.Vesta,
	Pools = {
		Encyclopedia.ItemPools.POOL_PLANETARIUM,
	},
})