--[[
    Script Name    : SpawnScripts/GrimgashsLair/GrimgashtheBlack.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.23 01:09:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end



function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC,Spawn)
    local choice = MakeRandomInt(1,2)
    if choice == 1 then
    PlayFlavor(NPC,"voiceover/english/grimgash_the_black/tutorial_island02_epic01/06_orc_grimgash_the_black_garbled_gm_0.mp3","First it was drakotas and now you!  I'll teach you not to mess with a Son of Zek!","",3587881717,1370147630,nil,17)
    elseif choice == 2 then
    PlayFlavor(NPC,"voiceover/english/grimgash_the_black/tutorial_island02_epic01/06_orc_grimgash_the_black_garbled_gm_0.mp3","You are not part of the plan!  I'll squash you like the bug you are.","",3587881717,1370147630,nil,17)
    end

    local zone = GetZone(NPC)
    local Gob1 = GetSpawnByLocationID(zone, 133776472)
    local Gob2 = GetSpawnByLocationID(zone, 133776473)
    local Gob3 = GetSpawnByLocationID(zone, 133776474)
    if IsAlive(Gob1) == true or IsAlive(Gob2) == true or IsAlive(Gob3) == true then
    Attack(Gob1,Spawn)
    Attack(Gob2,Spawn)
    Attack(Gob3,Spawn)
    end
end