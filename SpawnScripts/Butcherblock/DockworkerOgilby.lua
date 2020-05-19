--[[
	Script Name	: SpawnScripts/ButcherblockMountains/DockworkerOgilby.lua
	Script Purpose	: Dockworker Ogilby 
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        local choice = math.random(1,2)
        if choice == 1 then
	    PlayFlavor(NPC, "", "Mizzen says he has actually done time in the Hold of Prexus!", "", 1689589577, 4560189, Spawn)
        elseif choice == 2 then
            PlayFlavor(NPC, "", "I love Mizzen's story. There's always a happy ending!", "", 1689589577, 4560189, Spawn)
        end

end

