--[[
	Script Name      :    SpawnScripts/Frostfell/CandiceCheriweth.lua
	Script Purpose   :    Candice Cheriweth
	Script Author    :    vo1d
	Script Date      :    2019.10.29
	Script Notes     :    
--]]

local ADeepiceMystery = 486

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 60, "InRange", "OutRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if HasCompletedQuest(Spawn, ADeepiceMystery) then
	elseif HasQuest(Spawn, ADeepiceMystery) then
		if GetQuestStep(Spawn, ADeepiceMystery) == 5 then
			DeepiceMysteryChat1(NPC, Spawn)
		elseif GetQuestStep(Spawn, ADeepiceMystery) == 6 then
             DeepiceMysteryChat1(NPC, Spawn)
		end
	else
		Greetings(NPC, Spawn)
	end
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, ADeepiceMystery) and GetQuestStep(Caster, ADeepiceMystery) == 4 and SpellName == "pour acid on" then
		SpawnSet(Target, "model_type", "107")
		SetStepComplete(Caster, ADeepiceMystery, 4)
	end
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, ADeepiceMystery) and GetQuestStep(Spawn, ADeepiceMystery) == 4 then
		SpawnSet(NPC, "model_type", "11823")
	else
		SpawnSet(NPC, "model_type", "107")
    end
 end

function OutRange(NPC, Spawn)
end

function Greetings(NPC, Spawn)
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1039.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "We have heard everything that happened within the keep's walls. Everything! We know about the dragon and we know about what you did. You might want to go clean up after yourself. We will not let anyone know of your deeds but remember this is only due to the help you were to us. We are now even!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Thank you for the work you have done for us. We might have use of you at a later time. In the meantime we will be listening as the story unfolds within the keep. Your work has already partially paid off, we have found that the snow goblins in this area have some sort of interest in what is going on within the keep. I would keep an eye out for any goblins that might be looking for assistance.", "", 1689589577, 4560189, Spawn)
	end
end


function DeepiceMysteryChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "Did you see who did that to you?", "DeepiceMysteryChat2")
    StartConversation(Conversation, NPC, Spawn, "I... I'm free! Thank you for the help.")
end

function DeepiceMysteryChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "Who would have wanted.....", "DeepiceMysteryChat3")
	StartConversation(Conversation, NPC, Spawn, "No, I was busy mixing some butter when BAM! The butter was cold, and so was I!")
end

function DeepiceMysteryChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	if GetQuestStep(Spawn, ADeepiceMystery) == 5 then
		SetStepComplete(Spawn, ADeepiceMystery, 5)
	end

	AddConversationOption(Conversation, "This seems a little much for them.")
	StartConversation(Conversation, NPC, Spawn, "I'm betting it was those troublesome Humbugs.")
end