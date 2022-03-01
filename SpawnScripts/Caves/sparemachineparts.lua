--[[
    Script Name    : SpawnScripts/Caves/sparemachineparts.lua
    Script Author  : Shatou
    Script Date    : 2020.01.04 07:01:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function casted_on(NPC, Spawn, Message)

	--[[TODO: MECHANICAL PARTS NEED TO EXPLODE AND BE REMOVED FROM CLIENT VIEWPORT]]--
	if HasQuest(Spawn, 493) then
		if GetQuestStep(Spawn, 493) == 2 then
			if HasItem(Spawn, 6975) then
				if Message == "Place Explosives" then
					AddStepProgress(Spawn, 493, 2, 1)
                                        RemoveItem(Spawn, 6975)
				end
			end
		end
	end
end

function respawn(NPC)
    spawn(NPC)
end

