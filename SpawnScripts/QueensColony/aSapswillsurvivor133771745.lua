--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillsurvivor133771745.lua
    Script Author  : Rylec
    Script Date    : 2021.01.06 06:01:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    choice = math.random(1, 3)
    if choice == 1 then
	Say(NPC, "Pirates comin' from over there.")
    elseif choice == 2 then
	Say(NPC, "Pirates not wake for long time. Why now?")
    else
	Say(NPC, "Grexx think pirates been waitin' for chances to get gobbies. Evil gives them chance.")
    end
end

function respawn(NPC)

end

