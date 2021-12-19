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
			{str = "Enemies that walk over the special green creep will be slowed and a tentacle will attack them."},
			{str = "Enemies will be slowed while being attacked by the tentacle."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
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
			{str = "The chance for an enemy to be chained down is based on your tear rate."},
			{str = "The chance for an enemy to be chained down at base fire rate is 5%."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "Once your tear rate surpasses 30, the chance for an enemy to be chained down will always be 0.5%."},
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
			{str = "Isaac's tears will split into 4-12 or more tears."},
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
	Class = "Furtherance",
	ID = CollectibleType.COLLECTIBLE_OPHIUCHUS,
	WikiDesc = Wiki.Ophiuchus,
	Pools = {
		Encyclopedia.ItemPools.POOL_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_SHOP,
	},
})

Encyclopedia.AddItem({
	Class = "Furtherance",
	ID = CollectibleType.COLLECTIBLE_CHIRON,
	WikiDesc = Wiki.Chiron,
	Pools = {
		Encyclopedia.ItemPools.POOL_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_SHOP,
	},
})

Encyclopedia.AddItem({
	 Class = "Furtherance",
	ID = CollectibleType.COLLECTIBLE_JUNO,
	WikiDesc = Wiki.Juno,
	Pools = {
		Encyclopedia.ItemPools.POOL_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_TREASURE,
		Encyclopedia.ItemPools.POOL_GREED_SHOP,
	},
})

Encyclopedia.AddItem({
	Class = "Furtherance",
	ID = CollectibleType.COLLECTIBLE_PALLAS,
	WikiDesc = Wiki.Pallas,
	Pools = {
		Encyclopedia.ItemPools.POOL_PLANETARIUM,
	},
})

Encyclopedia.AddItem({
	Class = "Furtherance",
	ID = CollectibleType.COLLECTIBLE_CERES,
	WikiDesc = Wiki.Ceres,
	Pools = {
		Encyclopedia.ItemPools.POOL_PLANETARIUM,
	},
})

Encyclopedia.AddItem({
	Class = "Furtherance",
	ID = CollectibleType.COLLECTIBLE_VESTA,
	WikiDesc = Wiki.Vesta,
	Pools = {
		Encyclopedia.ItemPools.POOL_PLANETARIUM,
	},
})