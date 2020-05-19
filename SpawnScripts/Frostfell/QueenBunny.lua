--[[
	Script Name      :    SpawnScripts/FrostfellWonderlandVillage/QueenBunny.lua
	Script Purpose   :    Queen Bunny
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
        if GetQuestStep(Spawn, ADeepiceMystery) == 11 then
            DeepiceMysteryChat1(NPC, Spawn)
        elseif GetQuestStep(Spawn, ADeepiceMystery) == 12 then
            DeepiceMysteryChat1(NPC, Spawn)
		end
    else
        Greetings(NPC, Spawn)
    end
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, ADeepiceMystery) and GetQuestStep(Caster, ADeepiceMystery) == 10 and SpellName == "pour acid on" then
        SpawnSet(Target, "model_type", "6488")
        SetStepComplete(Caster, ADeepiceMystery, 10)
	end
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, ADeepiceMystery) and GetQuestStep(Spawn, ADeepiceMystery) == 10 then
		SpawnSet(NPC, "model_type", "11823")
	else
		SpawnSet(NPC, "model_type", "6488")
    end
 end

function OutRange(NPC, Spawn)
end

function Greetings(NPC, Spawn)
    local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1039.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Thank you so much for your help!", "thanks", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "You must meet with Felonious at Gnomeland Security in the Steamfont Mountains.", "nod", 1689589577, 4560189, Spawn)
	end
end

function DeepiceMysteryChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

    AddConversationOption(Conversation, "Who did this to you? Do you recall anything prior to being frozen?", "DeepiceMysteryChat2")
    StartConversation(Conversation, NPC, Spawn, "Bless you! I cannot thank you enough for freeing me of that ice.")
end

function DeepiceMysteryChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "That may have been the same animal McScroogle saw.", "DeepiceMysteryChat3")
	StartConversation(Conversation, NPC, Spawn, "Yes, I remember seeing an odd animal, one that I had not seen before, but was familiar. It was a fay drake, like those in the Faydark, but white and blue, and snow falling from its wings.")
end

function DeepiceMysteryChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    
    if GetQuestStep(Spawn, ADeepiceMystery) == 11 then
		SetStepComplete(Spawn, ADeepiceMystery, 11)
    end
end
