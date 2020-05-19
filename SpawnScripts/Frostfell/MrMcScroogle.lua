--[[
	Script Name      :    SpawnScripts/FrostfellWonderlandVillage/Mr.McScroogle.lua
	Script Purpose   :    Mr. McScroogle 
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
        if GetQuestStep(Spawn, ADeepiceMystery) == 9 then
            DeepiceMysteryChat1(NPC, Spawn)
        elseif GetQuestStep(Spawn, ADeepiceMystery) == 10 then
            DeepiceMysteryChat1(NPC, Spawn)
		end
	else
		Greetings(NPC, Spawn)
	end
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, ADeepiceMystery) and GetQuestStep(Caster, ADeepiceMystery) == 8 and SpellName == "pour acid on" then
        SpawnSet(Target, "model_type", "121")
        SetStepComplete(Caster, ADeepiceMystery, 8)
	end
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, ADeepiceMystery) and GetQuestStep(Spawn, ADeepiceMystery) == 8 then
		SpawnSet(NPC, "model_type", "11823")
	else
		SpawnSet(NPC, "model_type", "121")
    end
 end

function OutRange(NPC, Spawn)
end

function Greetings(NPC, Spawn)
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1054.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1054.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I hire you for one job and you think you can just harass me anytime? Get out of here.", "scold", 1689589577, 4560189, Spawn)
	end
end

function DeepiceMysteryChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

    AddConversationOption(Conversation, "Did you see what, or who, attacked you?", "DeepiceMysteryChat2")
    StartConversation(Conversation, NPC, Spawn, "Brrr! Thanks for the aid. Being stuck in that block was freezing my bones!")
end

function DeepiceMysteryChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "Wonderful! Who was it?", "DeepiceMysteryChat3")
	StartConversation(Conversation, NPC, Spawn, "You bet your last copper, I did!")
end

function DeepiceMysteryChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "Wait.... The Miragul?", "DeepiceMysteryChat4")
	StartConversation(Conversation, NPC, Spawn, "Miragul!")
end

function DeepiceMysteryChat4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "So, that's what you saw... Wild animals?", "DeepiceMysteryChat5")
	StartConversation(Conversation, NPC, Spawn, "Well, I didn't see Miragul, per se. But can you think of someone else with a fondness for ice, and wild animals?")
end

function DeepiceMysteryChat5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    if GetQuestStep(Spawn, ADeepiceMystery) == 9 then
		SetStepComplete(Spawn, ADeepiceMystery, 9)
    end
    
    AddConversationOption(Conversation, "Interesting, but maybe not Miragul.")
	StartConversation(Conversation, NPC, Spawn, "Animals made of ice, actually.")
end