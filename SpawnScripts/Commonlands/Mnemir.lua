--[[
    Script Name    : SpawnScripts/Commonlands/Mnemir.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.14 07:03:15
    Script Purpose : 
                   : 
--]]

local QUEST = 406 -- Filling the Coffers

function spawn(NPC)
SetTempVariable(NPC, "Hailed", "false")
end

function hailed(NPC, Spawn)
	if GetQuestStep(Spawn, QUEST) == 3 and GetTempVariable(NPC, "Hailed") == "false"  then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", "", "", 0, 0, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Your taxes weren't all in your mailbox, you still owe more.", "Option1")
	StartConversation(conversation, NPC, Spawn, "What yous want?")
	elseif GetTempVariable(NPC, "Hailed") == "true" and GetQuestStep(Spawn, QUEST) == 3 then
	Option2(NPC, Spawn)
	elseif GetQuestStep(Spawn, QUEST) >= 4 then
	local choice = MakeRandomInt(1,3)
	if choice == 1 then
	PlayFlavor(NPC, "", "..ugh!", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "...", "",  0, 0, Spawn)
	else
	PlayFlavor(NPC, "", "...nng...", "",  0, 0, Spawn)
	end
end
   end

function Option1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SetTempVariable(NPC, "Hailed", "true")
    if GetTempVariable(NPC, "Hailed") == "true" then
    AddPrimaryEntityCommand(Spawn, NPC, "Punch", 2)
    AddPrimaryEntityCommand(Spawn, NPC, "Footkick", 2)
    end
    conversation = CreateConversation()
    AddConversationOption(conversation, "Don't play dumb, Mnemir. Just give up the money you owe before I force it out of you.", "Option2")
    StartConversation(conversation, NPC, Spawn, "What?! That's a lie!")
end


function Option2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayAnimation(NPC, 29558)
    conversation = CreateConversation()
    AddConversationOption(conversation, "We'll see about that...")
    StartConversation(conversation, NPC, Spawn, "I won't! I don't have it! I won't give you anything! You can't make me do anything!")
end

function casted_on(NPC, Spawn, SpellName)
        local result = MakeRandomInt(1, 3)
    	if SpellName == 'Footkick' then
    	   if result == 1 then
    	   PlayAnimation(Spawn, 11761)
    	   PlayAnimation(NPC, 11911)
    	   elseif result == 2 then
    	    PlayAnimation(Spawn, 11761)
    	   PlayAnimation(NPC, 11911)   
    	   else  
    	   if GetQuestStep(Spawn, QUEST) == 3 then
    	   SetStepComplete(Spawn, QUEST, 3)
    	   end
    	   PlayAnimation(Spawn, 11761)
    	   PlayAnimation(NPC, 11767)
           AddTimer(NPC, 1300, "wasted")
    	   end
	elseif SpellName == 'Punch' then
	        if result == 1 then
    	   PlayAnimation(Spawn, 10783)
    	   PlayAnimation(NPC, 11911)
    	   elseif result == 2 then
    	   PlayAnimation(Spawn, 10783)
    	   PlayAnimation(NPC, 11911)    
    	   else
    	   if GetQuestStep(Spawn, QUEST) == 3 then
    	   SetStepComplete(Spawn, QUEST, 3)
    	   end
    	   PlayAnimation(Spawn, 10783)
    	   PlayAnimation(NPC, 11767)
    	   AddTimer(NPC, 1300, "wasted")
    	   end
end
   end

function wasted(NPC, Spawn)
 SpawnSet(NPC, "visual_state", "228")
 RemovePrimaryEntityCommand(NPC, "Punch")
 RemovePrimaryEntityCommand(NPC, "Footkick")
 AddTimer(NPC, 300000, "returned")
end


function returned(NPC, Spawn)
     SpawnSet(NPC, "visual_state", "0")
     SetTempVariable(NPC, "Hailed", "false")
end     
    

function respawn(NPC)
	spawn(NPC)
end

