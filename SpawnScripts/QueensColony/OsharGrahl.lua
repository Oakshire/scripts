--[[
    Script Name    : SpawnScripts/QueensColony/OsharGrahl.lua
    Script Author  : Rylec
    Script Date    : 2020.10.16 11:10:34
    Script Purpose : Add visual states and say
                   : 
--]]

function spawn(NPC)
       	AddTimer(NPC, 3000, "Animations")
       	AddTimer(NPC, 3000, "Text")
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Animations(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,2)

        if choice == 1 then
                PlayAnimation(NPC, 891)
        else
                PlayAnimation(NPC, 13008)
        end

        local time = math.random (30000,40000)         
        AddTimer(NPC, time, "Animations")
end

function Text(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                Say(NPC, "Night or day, I'll prrrotect you friend.")
                Emote(NPC, "flexes.") 
        elseif choice == 2 then
                Say(NPC, "All this sand in my fur, bah!")
                Emote(NPC, "shakes.") 
        else
                Say(NPC, "Our poor home... lost.")
        end

        local time2 = math.random (60000,240000)       
	AddTimer(NPC, time2, "Text")	
end
