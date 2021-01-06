--[[
    Script Name    : SpawnScripts/QueensColony/aQeynosianscout429376.lua
    Script Author  : Rylec
    Script Date    : 2021.01.05 09:01:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1005.mp3", "", "", 0, 0, Spawn)

        text = math.random(1,2)

        if text == 1 then
            Say(NPC, "The easiest way to the forward camp is down this cliff wall to the east here.")
        else
            Say(NPC, "Head east down this wall to get to Oofala's camp.")	
        end
end

function respawn(NPC)

end

