--[[
    Script Name    : SpawnScripts/QueensColony/GogginCogspring.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Goggin Cogspring dialog
    Modified Date  : 2020.04.09
    Modiefied by   : premierio015
    Modified Notes : Addded animations and dialogues
--]]

function spawn(NPC)
    EmoteLoop(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	voice = math.random (1,3)
	str = tostring(voice)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1020.mp3", "", "", 0, 0, Spawn)

        text = math.random(1,3)

        if text == 1 then
            Say(NPC, "Some day I'll get out there and work off this tab I have with Galan.")
        elseif text == 2 then
            Say(NPC, "Woooohaw!")
        else
            Say(NPC, "It's a party!")	
        end
end

function EmoteLoop(NPC)
        math.randomseed(os.time())
        local choice = math.random(1,2)
        str = tostring(choice)

        if choice == 1 then
   	    PlayAnimation(NPC, 11150)
	    AddTimer(NPC, 7000, "EmoteLoop")
        else
	    PlayAnimation(NPC, 11152)
	    AddTimer(NPC, 11000, "EmoteLoop")
        end
end