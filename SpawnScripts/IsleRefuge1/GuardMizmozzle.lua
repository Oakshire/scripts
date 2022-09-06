--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardMizmozzle.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.05 11:09:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    voice = math.random (1,3)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1031.mp3", "There is much see... Oh! look at that over there.","point", 0, 0, Spawn)
    end



function respawn(NPC)
	spawn(NPC)
end