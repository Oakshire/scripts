--[[
    Script Name    : SpawnScripts/OutpostOverlord/afallenTunarian.lua
    Script Author  : Lemmeron
    Script Date    : 2020.08.21 10:08:06
    Script Purpose : To Ensure Ghost Despawns if not killed before Grave Digger Respawns
                   : 
--]]

function spawn(NPC)
      AddTimer(NPC, 5000, "WhatHappened", 1) -- Emote the ghost confusion
      AddTimer(NPC, 200000, "Vanish", 1) -- To ensure ghost is gone before grave Digger Respawns
end

function Vanish(NPC)
      -- Say(NPC, "I am vanishing 1")
      Despawn(NPC)
end

function WhatHappened(NPC)
	local response = math.random(1, 4)
			if response == 1 then
				Say(NPC, "Wha...What happened ?!")
			elseif response == 2 then
				Say(NPC, "Wh...Where am I ?")
			elseif response == 3 then
				Say(NPC, "How...How did I get here ?")
			elseif response == 4 then
				Say(NPC, "It...It doesn't hurt anymore")
			end
         PlayAnimation(NPC, 11214) -- confused
end

function respawn(NPC)
end

