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
        local choice = MakeRandomInt(1,2)

        if choice == 1 then
                PlayAnimation(NPC, 891)
        else
                PlayAnimation(NPC, 13008)
        end

        local time = MakeRandomInt(30000,40000)         
        AddTimer(NPC, time, "Animations")
end

function Text(NPC)
        local choice = MakeRandomInt(1,3)

        if choice == 1 then
	    	    PlayFlavor(NPC, "", "Night or day, I'll prrrotect you friend.", "flex", 0, 0 )
        elseif choice == 2 then
                Say(NPC, "")
       	    	PlayFlavor(NPC, "", "All this sand in my fur, bah!", "scratch", 0, 0 )
        else
                Say(NPC, "Our poor home... lost.")
        end

        local time2 = MakeRandomInt(60000,240000)       
	AddTimer(NPC, time2, "Text")	
end
