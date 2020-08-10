--[[
    Script Name    : SpawnScripts/Freeport/IntelligenceOfficerGezlowe.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 07:08:31
    Script Purpose : 
                   : 
--]]

local QUEST = 573

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end


function InRange(NPC, Spawn)
if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1 then
PlayFlavor(NPC, "", "You there!  If you don't wish to be found in violation of treason, you'd better have a word with me.", "beckon", 1689589577, 4560189, Spawn)
end
   end

function LeaveRange(NPC, Spawn)

end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1 then
    conversation = CreateConversation()
    PlayFlavor(NPC, "intelligence_officer_gezlowe/fprt_west/io_gezlowe001.mp3", "", "", 4100697640, 2084488414, Spawn)
    AddConversationOption(conversation, "Enemies of the state?", "option1")
    AddConversationOption(conversation, "I was just getting more information so I could find the rest of them.", "option2")
    StartConversation(conversation, NPC, Spawn, "Good, good. I'm glad you made the right choice. I understand you've agreed to do a bit of work for a prisoner.  Lucan doesn't take kindly to those who would aid enemies of the state.")
    else
    PlayFlavor(NPC, "", "Move along, move along.", "", 1689589577, 4560189, Spawn)
end
   end


function option1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "intelligence_officer_gezlowe/fprt_west/io_gezlowe002.mp3", "", "", 2574431215, 475612057, Spawn)
 AddConversationOption(conversation, "Yeah, I understand.", "option2_1")
 StartConversation(conversation, NPC, Spawn, "Frogloks. If the legends are to be believed, they've got some sort of religious relation to Lucan's old enemies. Can't have them wandering around, understand?")
 end
   
function option2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "intelligence_officer_gezlowe/fprt_west/io_gezlowe003.mp3", "", "",  1225667417, 2186564758, Spawn)
AddConversationOption(conversation, "No, sir.", "option2_1")
StartConversation(conversation, NPC, Spawn, "Good, right along our line of thinking. We can't just have these multi-colored dissidents wandering around, can we?")
end

function option2_1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
SetStepComplete(Spawn, QUEST, 1)
PlayFlavor(NPC, "intelligence_officer_gezlowe/fprt_west/io_gezlowe004.mp3", "", "", 2945684159, 2849117183, Spawn)
AddConversationOption(conversation, "No, sir.")
StartConversation(conversation, NPC, Spawn, "So what we're going to do is take care of this little incident before we find more of these things on our doorstep. Go find the one you're looking for. Kill it. Then tell the frog that it died of sunstroke or something.")
end
