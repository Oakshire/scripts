--[[
	Script Name		:	SpawnScripts/TheCauldronHollow/HouseStatue.lua
	Script Purpose	:	Totem in Claudron Hollow
	Script Author	:	alfa24t
	Script Date		:	12/10/2022
	Script Notes	:	SpawnID 3390031 3390032 3390033
	
	This zone is no longer raid (all the named mobs and placeholders are heroic) and the access quest requirement is gone so the zone can be entered any time.

When entering this zone you get an 18-hours "failure lockout." Once you kill the Torig's descendant it changes to a 35-hours success lockout. Killing the other nameds does not count as a success.

There are eleven totems in the instance. When they are activated, three groups of lost souls spawn, each at one of the eleven houses. It appears two are either bugged or intentionally different, as killing the first groups spawns only two named groups, and three are needed to spawn the Torig.

When each group is cleared, usually one of eight nameds (level 34 heroic with two assistant mobs in their group) spawns immediately at the same house. If three groups spawn and all three named groups are cleared, the Vampire Descendant of the Torig spawns at the zone-in gate, and when you approach begins walking to the central area with his two helpers. If you click one of the two-named totems (eight and nine as listed below), the Torig will not spawn. (This happened in a raid when the zone was still epic as well on one occasion at least.) All the nameds give AA for first kills.

The eight named NPC mobs are, in no particular order:

    Burning Inferno
    The Drained Soul of Betrayal
    Bumwuk the Oppressor
    Anoyaths Temptress
    Haunted Nightmare
    The Restless Specter
    Enchanted Dreams of the Dead (giant Billy)
    The Troll Plunderer

One or two of the houses are set well back from the others so it's easy to miss the totem. Starting at the first house on the left as you enter and moving clockwise, activating the totems spawns these named groups (once the "placeholders" are cleared):

    First totem: Anoyaths Temptress, The Restless Specter, The Troll Plunderer
    Second totem: Haunted Nightmare, Enchanted Dreams of the Dead, The Restless Specter
    Third totem: Enchanted Dreams of the Dead, Burning Inferno, The Restless Specter
    Fourth totem: Burning Inferno, Bumwuk the Oppressor, The Drained Soul of Betrayal
    Fifth totem: Bumwuk the Oppressor, Anoyaths Temptress, The Troll Plunderer
    Sixth totem: Anoyaths Temptress, The Restless Specter, Haunted Nightmare
    Seventh totem: The Restless Specter, The Troll Plunderer, Anoyaths Temptress
    Eighth totem: (spawns three groups of lost souls but the one at this house does not spawn a named, and consequently no Torig when the others were cleared) The Restless Specter, The Troll Plunderer
    Ninth totem: (same problem as eighth totem, with the number 8 house not spawning a named) The Drained Soul of Betrayal, Enchanted Dreams of the Dead
    Tenth totem: Burning Inferno, The Troll Plunderer, The Drained Soul of Betrayal
    Eleventh (last) totem (to right as you enter): The Troll Plunderer, Haunted Nightmare, Bumwuk the Oppressor
	
	
	
	MISSING SPAWN 
Burning Inferno
The Drained Soul of Betrayal
Enchanted Dreams of the Dead (giant Billy)
--]]



function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "use" then
conversation = CreateConversation()
		AddConversationOption(conversation, "I would like to travel.")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
end
end