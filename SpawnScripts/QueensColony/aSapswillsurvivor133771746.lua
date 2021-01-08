--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillsurvivor133771746.lua
    Script Author  : Rylec
    Script Date    : 2021.01.07 05:01:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "visual_state", 11150) 
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    choice = math.random(1, 4)
    if choice == 1 then
	Say(NPC, "Go Durg!")
    elseif choice == 2 then
	Say(NPC, "Go Gonk!")
    elseif choice == 3 then
	Say(NPC, "Twins are strong.  Twins keep us safe.")
    else
	Say(NPC, "Durg and Gonk go bash and bonk!")
    end
end

function respawn(NPC)

end

