--[[
    Script Name    : SpawnScripts/QueensColony/LieutenantWestfall.lua
    Script Author  : premierio015
    Script Date    : 2015.07.30
    Script Purpose : Lieutenant Westfall dialog
    Notes          :  Script should be updated and spawn Moraks on hail instead of timer, also function should have restriction otherwise players would spawn 500 moraks when hail.,
--]] 

function spawn(NPC)
         SetPlayerProximityFunction(NPC, 40, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
local spawn2 =  GetSpawnByGroupID(Zone,1044835)
if spawn2 ~= nil then
PlayFlavor(NPC, "", "What's that there!  To arms, the Morak are coming!", "point", 1689589577, 4560189, Spawn)
end
end

function LeaveRange(NPC, Spawn)

end

function hailed(NPC, Spawn)

end

function aggro(NPC)
math.randomseed(os.time())
local choice = math.random(1,3)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443)
else
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
end
   end
function killed(NPC)
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_ec0cd85a.mp3", "I hope they're all this easy.", "", 2687289628, 2303639320)
end


