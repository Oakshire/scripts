--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardMizmozzle.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.05 11:09:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")
end



function hailed(NPC, Spawn)
    choice = MakeRandomInt(1,2)
    voice = math.random (1,3)
    FaceTarget(NPC, Spawn)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1031.mp3", "There is much see... Oh! look at that over there.","point", 0, 0, Spawn)
    elseif choice ==2 then
    PlayFlavor(NPC, "voiceover/english/ratonga_eco_evil_1/ft/ratonga/ratonga_eco_evil_1_hail_gf_338379af.mp3", "Risk is part of the game.  Play it for all it's worth.", "scheme", 2615843264, 1281001022, Spawn, 0)
    end
end 


function respawn(NPC)
	spawn(NPC)
end