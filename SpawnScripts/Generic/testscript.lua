--[[
    Script Name    : SpawnScripts/Generic/testscript.lua
    Script Author  : Cynnar
    Script Date    : 2022.04.15 07:04:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	gettinggroups = GetGroup(NPC)

    
    
    local currentlevel = GetLevel(NPC)
	Say(NPC, "My current level is: " .. currentlevel)
	
	local minlevel = 32
	Say(NPC, "The Min level is: " .. minlevel)
	
	local maxlevel = 38
	Say(NPC, "The Max level is: " .. maxlevel)
	
	math.randomseed(os.time())
	local newlevel = math.random(minlevel, maxlevel)
	SpawnSet(NPC, "level", newlevel )
	Say(NPC, "My new level is: " .. newlevel)
	
	if gettinggroups == nil then
        Say(NPC, "I do not speak to loners...")
    else
        FaceTarget(NPC, Spawn)
        for k,v in ipairs(gettinggroups) do
           Say(NPC, GetName(v))
           SpawnSet(v, "level" .. newlevel)
        end
    end
	
end

function respawn(NPC)
	spawn(NPC)
end