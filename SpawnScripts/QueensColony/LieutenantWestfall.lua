--[[
    Script Name    : SpawnScripts/QueensColony/LieutenantWestfall.lua
    Script Author  : premierio015
    Script Date    : 2020.08.05
    Script Purpose : Lieutenant Westfall dialog
    Notes          :  
--]]

   

function spawn(NPC)
SetTempVariable(NPC, "HAILED1", "true")  
end

function respawn(NPC)
         spawn(NPC)
end



function hailed(NPC, Spawn)  
if GetTempVariable(NPC, "HAILED1")  == "true" then
PlayFlavor(NPC, "", "What's that there!  To arms, the Morak are coming!", "point", 1689589577, 4560189, Spawn)
zone = GetZone(Spawn)
Morak1 = SpawnByLocationID(zone, 428874)
Morak2= SpawnByLocationID(zone, 428880)
Morak3 = SpawnByLocationID(zone, 428890)
SetTempVariable(NPC, "HAILED1", "false")
AddTimer(NPC, 300000, "hailed2")
elseif GetTempVariable(NPC, "HAILED1") == "false" then
local choice = math.random(1, 2)
if choice == 1 then
PlayFlavor(NPC, "", "Hopefully Mara'Vaen can help our lost scouts.", "", 1689589577, 4560189, Spawn)
else
PlayFlavor(NPC, "", "Keep your eyes peeled, the Morak have risen once again.", "peer", 1689589577, 4560189, Spawn)
end
   end
      end


function hailed2(NPC, Spawn)
SetTempVariable(NPC, "HAILED1", "true")
end

function aggro(NPC)
local choice = math.random(1,2)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432)
else
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443)
end
   end

function killed(NPC)
local choice = math.random(1,3)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_ec0cd85a.mp3", "I hope they're all this easy.", "", 2687289628, 2303639320)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
else
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_153f12ff.mp3", "One down!", "", 3009518664, 4140389760)
end 
   end


