--[[
    Script Name    : SpawnScripts/QueensColony/OsharGrahl.lua
    Script Author  : Rylec
    Script Date    : 2020.10.16 11:10:34
    Script Purpose : Add visual states and say
                   : 
--]]

function spawn(NPC)
       	AddTimer(NPC, 1000, "visualstate")
       	AddTimer(NPC, 1000, "shout")
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function visualstate(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,2)

        if choice == 1 then
	        SpawnSet(NPC, "visual_state", 891)
	        AddTimer(NPC, 6000, "resetvisualstate")
        elseif choice == 2 then
	        SpawnSet(NPC, "visual_state", 13008)
	        AddTimer(NPC, 15000, "resetvisualstate")
        end
end

function resetvisualstate(NPC)
        SpawnSet(NPC, "visual_state", 0)

        local time = math.random (30000,40000)       
	AddTimer(NPC, time, "visualstate") 	
end

function shout(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                Say(NPC, "Night or day, I'll prrrotect you friend.")
                Emote(NPC, "flexes.") 
        elseif choice == 2 then
                Say(NPC, "All this sand in my fur, bah!")
                Emote(NPC, "shakes.") 
        elseif choice == 3 then
                Say(NPC, "Our poor home... lost.")
        end

        local time = math.random (60000,240000)       
	AddTimer(NPC, time, "shout")	
end
