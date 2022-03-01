--[[
	Script Name      :    SpawnScripts/FrostfellWonderlandVillage/GardyEx-Giftgiver.lua
	Script Purpose   :    Gardy Ex-Giftgiver 
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
        if GetQuestStep(Spawn, ADeepiceMystery) == 7 then
            DeepiceMysteryChat1(NPC, Spawn)
        elseif GetQuestStep(Spawn, ADeepiceMystery) == 8 then
            DeepiceMysteryChat1(NPC, Spawn)
		end
	else
		Greetings(NPC, Spawn)
	end
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, ADeepiceMystery) and GetQuestStep(Caster, ADeepiceMystery) == 6 and SpellName == "pour acid on" then
        SpawnSet(Target, "model_type", "115")
        SetStepComplete(Caster, ADeepiceMystery, 6)
	end
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, ADeepiceMystery) and GetQuestStep(Spawn, ADeepiceMystery) == 6 then
		SpawnSet(NPC, "model_type", "11823")
	else
		SpawnSet(NPC, "model_type", "115")
    end
 end

function OutRange(NPC, Spawn)
end

function Greetings(NPC, Spawn)
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Frostfell certainly is the best time of year!", "happy", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Why would anyone beat up a guy giving away gifts?", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Owch!  Maybe my bruises will be in festive colors.", "", 1689589577, 4560189, Spawn)
	end
end

function DeepiceMysteryChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "Did you see who, or what, froze you?", "DeepiceMysteryChat2")
    StartConversation(Conversation, NPC, Spawn, "I was beginning to fear the worst, friend. Thank you for freeing me!")
end

function DeepiceMysteryChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "I doubt it. Maybe someone else saw something.", "DeepiceMysteryChat3")
	StartConversation(Conversation, NPC, Spawn, "No, but considering the magics used do you think it was coldain or ice giants?")
end

function DeepiceMysteryChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	SetStepComplete(Spawn, ADeepiceMystery, 7)
	AddConversationOption(Conversation, "This seems a little much for them.")
	StartConversation(Conversation, NPC, Spawn, "I'm betting it was those troublesome Humbugs.")
end