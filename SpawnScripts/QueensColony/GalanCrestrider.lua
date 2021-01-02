--[[
    Script Name    : SpawnScripts/QueensColony/GalanCrestrider.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Galan Crestrider dialog
                   : 
--]]

function spawn(NPC)

end

function respawn(NPC)
        spawn(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1050.mp3", "", "", 0, 0, Spawn)

        text = math.random(1,3)

        if text == 1 then
            Say(NPC, "If you can trade it, we can buy it.")
        elseif text == 2 then
            Say(NPC, "Welcome to Crestrider's Trading Post.")
        else
            Say(NPC, "Got any goods for sale from your adventures?")	
        end
end