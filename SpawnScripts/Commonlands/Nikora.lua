--[[
    Script Name    : SpawnScripts/Commonlands/Nikora.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.17 04:11:31
    Script Purpose : Nikora Dialog
                   : 
--]]

local AFriendInNeed = 422 

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SpawnSet(NPC, "visual_state", "221")
    conversation = CreateConversation()
    if HasQuest(Spawn, AFriendInNeed) and GetQuestStep(Spawn, AFriendInNeed) == 1 then
    PlayFlavor(NPC, "nikora/commonlands/quests/nikora/nikora001.mp3", "", "", 4103594663, 2537440722, Spawn)
    AddConversationOption(conversation, "[Crouch Down and Listen]", "dlg1")
    StartConversation(conversation, NPC, Spawn, "Shhh!  Quiet, I'm trying to listen to this.  And I said, get down!  We'll talk in a minute.")
    elseif HasQuest(Spawn, AFriendInNeed) and GetQuestStep(Spawn, AFriendInNeed) == 3 then
    PlayFlavor(NPC, "", "Many thanks friend, I'll let Nethet know about this, he should help you out with whatever you need.  I'm going to stay here a while longer and see if the Blackshields have anything else up their sleeves.", "thanks", 1689589577,  4560189, Spawn)
end
   end

function dlg1(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     conversation = CreateConversation()
     PlayFlavor(NPC, "nikora/commonlands/quests/nikora/nikora006.mp3", "Now, what is it that they are up to I wonder...", "", 2881821401,  700046352, Spawn)
     AddTimer(NPC, 6000, "dlg2", 1, Spawn)
     PlayAnimation(Spawn, 219)
     AddTimer(NPC, 1000, "crouch", 1, Spawn)
end

function crouch(NPC, Spawn)
PlayAnimation(Spawn, 221)
end


function dlg2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
     conversation = CreateConversation()
     PlayFlavor(NPC, "nikora/commonlands/quests/nikora/nikora002.mp3", "", "", 301114199, 2689059708, Spawn)
     AddConversationOption(conversation, "Yes, he said you were in trouble.", "dlg3")
     StartConversation(conversation, NPC, Spawn, "I assume Nethet sent you?")
end

function dlg3(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     SetStepComplete(Spawn, AFriendInNeed, 1)
     conversation = CreateConversation()
     PlayFlavor(NPC, "nikora/commonlands/quests/nikora/nikora003.mp3", "", "", 3358631854, 2819585545, Spawn)
     AddConversationOption(conversation, "So you want me to kill them right?", "dlg4")
     AddConversationOption(conversation, "What do you want me to do?", "dlg5")
     StartConversation(conversation, NPC, Spawn, "That's true I'm in a bit of a bind.  If you can help me then I'll put in a good word to Nethet to help you out with whatever you need.  I can't very much make a deal with these smugglers if they are trying to kill me.")
end

function dlg4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   PlayFlavor(NPC, "nikora/commonlands/quests/nikora/nikora004.mp3", "", "", 2959996, 3817902828, Spawn)
   AddConversationOption(conversation, "Consider it done.")
   AddConversationOption(conversation, "I am not getting involved in this, goodbye.")
   StartConversation(conversation, NPC, Spawn, "Are you insane?  No, I just need the assassins they've sent after me to disappear if you know what I mean.  If they can't do the job then I can live long enough to have Nethet smooth all this misunderstanding out.")
end


function dlg5(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   PlayFlavor(NPC, "nikora/commonlands/quests/nikora/nikora005.mp3", "", "", 1585465383, 992323409, Spawn)
   AddConversationOption(conversation, "I'll get right to it.")
   AddConversationOption(conversation, "I am not getting involved in this, goodbye.")
   StartConversation(conversation, NPC, Spawn, "I need the assassins they've sent after me to disappear if you know what I mean.  If they can't do the job then I can live long enough to have Nethet smooth all this misunderstanding out.")
end








function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "", "What are you doing? Get down! They'll see you!", "", 0, 0, Spawn)
end

function LeaveRange(NPC, Spawn)

end


 
        