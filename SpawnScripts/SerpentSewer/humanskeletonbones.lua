--[[
    Script Name    : SpawnScripts/SerpentSewer/humanskeletonbones.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 08:07:26
    Script Purpose : 
                   : 
--]]

local CrazyTalkingSkull = 5270

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, CrazyTalkingSkull) and not HasCompletedQuest(Spawn,  CrazyTalkingSkull) or HasQuest(Spawn, CrazyTalkingSkull) and GetQuestStep(Spawn, CrazyTalkingSkull) == 2 then
     AddPrimaryEntityCommand(Spawn, NPC, "hail", 5, "hail", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'hail' then
		    if not HasQuest(Spawn, CrazyTalkingSkull) then
		    OfferQuest(NPC, Spawn, CrazyTalkingSkull)
               conversation = CreateConversation()
               AddConversationOption(conversation, "How is it that a skull can speak?", "dlg1")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Oh my! How rude of me!  Allow me to introduce myself, or at least what little is left. I am Gord, or rather, was, Gord Smith.  Like I said,  these sewers aren't safe.")
        elseif GetQuestStep(Spawn, CrazyTalkingSkull) == 2 then
        SetStepComplete(Spawn, CrazyTalkingSkull, 2)
         conversation = CreateConversation()
        AddConversationOption(conversation, "WHAT!?", "attack_spawn")
        StartDialogConversation(conversation, 1, NPC, Spawn, "How wonderful!  You've returned with my body!  Wait, what's this?  I said be careful, you half wit!  I guess I have to kill you now.")
        PlayFlavor(NPC, "voiceover/english/talking_skull/fprt_sewer02/quests/talking_skull/talking_skull_005.mp3", "", "", 1373178593, 1244187654, Spawn)
        end
        
    SetAccessToEntityCommand(Spawn,NPC,"hail", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end


function dlg1(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I'll see what I can do.", "dlg2")
StartDialogConversation(conversation, 1, NPC, Spawn, "Well that is a mystery. I imagine it has something to do with my untimely demise.  I speculate that, perhaps, if I were reunited with my bodily remains then I may be able to rest in peace.  What say you, traveler?  Will you help me recover my remains?")
end

function dlg2(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Right.")
StartDialogConversation(conversation, 1, NPC, Spawn, "Can I help you with something?  Are you lost?  Perhaps you could get lost somewhere closer to my bodily remains?  Yes I think that would be beneficial for me.  Oh, and do be careful with my bones when you find them.")
end

function check(NPC, Spawn)
     if not HasQuest(Spawn,  CrazyTalkingSkull) and not HasCompletedQuest(Spawn, CrazyTalkingSkull) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"hail", 1)
end
   end

function attack_spawn(NPC, Spawn)
	zone = GetZone(Spawn)
	skeleton = SpawnByLocationID(zone, 133772386)
	if skeleton ~= nil then
	Attack(skeleton, Spawn)
end
   end

function respawn(NPC)
	spawn(NPC)
end