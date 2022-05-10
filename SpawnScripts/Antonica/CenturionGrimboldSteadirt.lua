--[[
    Script Name    : SpawnScripts/Antonica/CenturionGrimboldSteadirt.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 12:05:45
    Script Purpose : 
                   : 
--]]

local LordGrimrotsScythe = 5522

    local greetingsTable = { "voiceover/english/voice_emotes/greetings/greetings_1_1060.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_2_1060.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_3_1060.mp3"};

function spawn(NPC)

end

function hailed(NPC, Spawn)
    PlayFlavor(NPC, greetingsTable[math.random(#greetingsTable)], "", "", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, LordGrimrotsScythe) == 9 then
	AddConversationOption(conversation, "Ignar Steadirt suggested I come see you.", "Option1")
	end
	AddConversationOption(conversation, "No, not right now.  Thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes? Can I help you?")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "How can I help?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Good!  We can always use more help dealing with the undead.  I need someone to take care of some business inside this gate.  I can't risk leaving it open for long, don't want any undead escaping.")
end
function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, LordGrimrotsScythe, 9)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll get to work.")
	StartConversation(conversation, NPC, Spawn, "You can help by talking with the soldiers inside the Gully.  You'll find the first encampment of the dwarven unit just inside these gates.  For some reason, the undead are restless.  It's our job to send them back to their eternal rest.  Good luck!")
end




function respawn(NPC)
	spawn(NPC)
end