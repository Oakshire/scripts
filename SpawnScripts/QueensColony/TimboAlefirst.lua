--[[
    Script Name    : SpawnScripts/QueensColony/TimboAlefirst.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Timbo Alefirst dialog
    Modified Date  : 2020.04.09
    Modified  by   : premierio015
    Modified Notes : Addded animations, dialogues
--]]

function spawn(NPC)
    EmoteLoop(NPC)
end

function respawn (NPC)
     spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random (1,3)
    str = tostring(choice)

	if voice == 1 then
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1026.mp3", "", "", 0, 0, Spawn)
	elseif voice == 2 then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1026.mp3", "", "", 0, 0, Spawn)
	else
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1026.mp3", "", "", 0, 0, Spawn)
        end

        text = math.random(1,3)

        if text == 1 then
            Say(NPC, "Wow, Meri is a great dancer!")
        elseif text == 2 then
            Say(NPC, "We need a band!")
        else
            Say(NPC, "I hope im not embarrassing myself.")	
        end
end

function EmoteLoop(NPC)
    math.randomseed(os.time())
    local choice = math.random(1,4)
    str = tostring(choice)

    if choice == 1 then
-- flirt
	PlayAnimation(NPC, 11557)
	AddTimer(NPC, 11000, "Idle")
    elseif choice == 2 then
-- orate
	PlayAnimation(NPC, 11909)
	AddTimer(NPC, 8000, "Idle")
    elseif choice == 3 then
-- flourish
	PlayAnimation(NPC, 298)
	AddTimer(NPC, 9000, "Idle")
    else
-- heelclick
	PlayAnimation(NPC, 11681)
	AddTimer(NPC, 3500, "Idle")
    end
end

function Idle(NPC)
	PlayAnimation(NPC, 323)    
        EmoteLoop(NPC)
end