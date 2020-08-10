--[[
    Script Name    : SpawnScripts/Commonlands/Kraofla.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.09 02:08:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function aggro(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/froglok_base_1/ft/froglok/froglok_base_1_1_aggro_gf_12dbb8ad.mp3", "Caught thee red handed, did I?", "", 2509424465, 3667247007, Spawn)
end

function death(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/froglok_base_1/ft/froglok/froglok_base_1_1_death_gf_f9da3030.mp3", "Withdraw, fine comrades. I shall remain.", "", 47103978, 1821153074, Spawn)
end

function healthchanged(NPC, Spawn)
local chance = math.radom(1, 100)
if chance  <= 20  then
PlayFlavor(NPC, "", "Marr protect me!", "", 1689589577, 4560189, Spawn)
end
   end