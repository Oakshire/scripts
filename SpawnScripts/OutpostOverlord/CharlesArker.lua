--[[
    Script Name    : SpawnScripts/OutpostOverlord/CharlesArker.lua
    Script Author  : Cynnar, premierio015
    Script Date    : 2018.10.14 07:10:58, 18.05.2020(UPDATE)
    Script Purpose : Offer Quests "In the Name of Prestige", "In the Name of Honor"
    Notes          : Made some rewrites on "In The Name Of Prestige" dialogues, so now work as intended. Added "In the Name of Honor" dialogues.
--]]

local InTheNameOfPrestige = 489
local InTheNameOfHonor = 490
local TheTunarianPlot = 491

function spawn (NPC)
         
end

function respawn (NPC)
         spawn(NPC)
end
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        
	if GetQuestStep(Spawn, InTheNameOfPrestige) == 1 then
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker004.mp3", "", "", 1870656524, 1643000002, Spawn)
	AddConversationOption(conversation, "I'll see what I can find out.", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "I appreciate it, " .. GetName(Spawn) .. "  Whatever glory comes of this, we'll share in the credit.  I'm sure this will more than make up for the work I've done that others have taken credit for.")
        elseif not HasQuest(Spawn, InTheNameOfPrestige) and not HasCompletedQuest(Spawn, InTheNameOfPrestige) then
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker001.mp3", "", "nod", 2051119928, 4163051805, Spawn)
	AddConversationOption(conversation, "I don't talk to strangers.")
	AddConversationOption(conversation, "I'm not a recruit. I volunteered.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "You're that new recruit I keep hearing about. " .. GetName(Spawn) .. " , isn't it?")
        elseif HasQuest(Spawn, InTheNameOfPrestige)  and GetQuestStep(Spawn, InTheNameOfPrestige) <= 8 then
        missingpieces(NPC, Spawn)
        elseif HasQuest(Spawn, InTheNameOfHonor) and GetQuestStep(Spawn, InTheNameOfHonor) <= 6  then
        isdead(NPC, Spawn)
        elseif HasCompletedQuest(Spawn, InTheNameOfPrestige) and not HasCompletedQuest(Spawn, TheTunarianPlot) then
        dlg_1_6(NPC, Spawn)
        end

        if HasQuest(Spawn, TheTunarianPlot) and GetQuestStep(Spawn, TheTunarianPlot) == 5 then
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker013.mp3", "", "peer", 1963096274, 3996749562, Spawn)
        AddConversationOption(conversation, "Yes, but something about it puzzles me.", "dlg_3_1")
        AddConversationOption(conversation, "Huh?")
        StartConversation(conversation, NPC, Spawn, "What's that? You found more of the parchment?")
        elseif GetQuestStep(Spawn, TheTunarianPlot) == 6 then
        dlg_3_1(NPC,Spawn)
        end

        if HasCompletedQuest(Spawn, TheTunarianPlot) then
        choice = math.random (1, 4)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quest/quest_charles_arker_complete02_d9b903b7.mp3", "Once again, I'm in your debt.", "", 2421222814, 2543907839, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quest/quest_charles_arker_complete02_2a10e388.mp3", "Soon I'll be able to return home, with prestige and honor, thanks to your help.", "", 3771023938, 797205485, Spawn)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quest/quest_charles_arker_complete02_6f536069.mp3", "Those wood elf vixens are vile creatures who lure good men to their destruction!", "", 2187772267, 3225973212, Spawn)
        else
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quest/quest_charles_arker_complete02_e40ced16.mp3", "I appreciate your help.", "", 1970845095, 134772962, Spawn)    
        end 
           end
               end
       
       

function missingpieces(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker005.mp3", "", "nod", 3781470259, 2263609559)
if GetQuestStep(Spawn, InTheNameOfPrestige) == 8 then
AddConversationOption(conversation, "Yes. This is the message I've managed to put together.", "dlg_1_6")
end
AddConversationOption(conversation, "Not all of them.")
StartConversation(conversation, NPC, Spawn, "Have you found more of the missing pieces?")             
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker002.mp3", "", "", 1779982844, 2478664547, Spawn)
	AddConversationOption(conversation, "Not really.")
	AddConversationOption(conversation, "What kind of help do you need?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Your reputation precedes you -- as will mine, someday soon.  When I return to Freeport, my prestige will bring honor to my family.  I came here to make a name for myself, but it's been difficult to stand out in the crowd.  I have a new assignment and it's puzzling me.  Would you help me unravel it?")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker003.mp3", "", "", 435953835, 2242560449, Spawn)
	AddConversationOption(conversation, "Certainly.", "questoffer")
	StartConversation(conversation, NPC, Spawn, "There's a lot of undercover work here, which means even if you do well, the higher-ups may not know it's you doing the work.  Some of my best work was claimed by someone else and I mean to fix that.  Not long ago, I intercepted part of a note one of the Tunarian spies was delivering.  They've hidden the remaining pieces.  We need to get them all back to learn more of what they're doing.")
end


function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker004.mp3", "", "thank", 1870656524, 1643000002, Spawn)
	AddConversationOption(conversation, "I'll see what I can find out.", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "I appreciate it, " .. GetName(Spawn) .. "  Whatever glory comes of this, we'll share in the credit.  I'm sure this will more than make up for the work I've done that others have taken credit for.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        SetStepComplete(Spawn, InTheNameOfPrestige, 1)
	local conversation = CreateConversation()
        
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker021.mp3", "", "", 1916109124, 3504506765, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "A word of warning: be wary of those wood elves.  They're more cunning than others may realize.")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        SetStepComplete(Spawn, InTheNameOfPrestige, 8) 
	local conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker006.mp3", "", "", 2475145114, 3569833047, Spawn)
        if HasCompletedQuest(Spawn, InTheNameOfPrestige) and not HasCompletedQuest(Spawn, InTheNameOfHonor) then
        AddConversationOption(conversation, "In what way?", "dlg_2_1")
        end
	AddConversationOption(conversation, "Not at the moment.")
	StartConversation(conversation, NPC, Spawn, "The Tunarian note is still incomplete, but this may be enough to advance our prestige, " .. GetName(Spawn) .. ". You know, you're very good at this kind of thing. Tell me, would you be interested in helping me on a more personal level?")
 end

function questoffer(NPC, Spawn)
-- Gives a quest after some chat (dlg_1_1>dlg_1_2>dlg_1_3) 
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, InTheNameOfPrestige)
end

-- IN THE NAME OF HONOR

function dlg_2_1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker007.mp3", "", "nod", 3047126327, 3117887484, Spawn)
 local conversation = CreateConversation()
 AddConversationOption(conversation, "That's pretty unfortunate.", "dlg_2_2")  
 StartConversation(conversation, NPC, Spawn, "As you know, I came here to make more of a name for myself.  When I return home, my marriage will take place.  I've been betrothed since birth to a lady from a good family.  The match will elevate my family's status.  Unfortunately, my betrothed has the face of a horse.")
end

function dlg_2_2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker008.mp3", "", "ponder", 103196051, 3322236068, Spawn)
 local conversation = CreateConversation()
 AddConversationOption(conversation, "What do you need me to do?", "dlg_2_3")
 AddConversationOption(conversation, "I'm sorry, but I can't help you.")
 StartConversation(conversation, NPC, Spawn, "Also, unfortunately, I've found myself unnaturally attracted to one of those Tunarian spies.  A wood elf...she's graceful, beautiful and deadly.  Nothing must come of this fancy of mine.  I cannot let my reputation be sullied by even the merest hint of a romance with one of their kind.")
 end

function dlg_2_3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker009.mp3", "", "cutthroat", 2534306844, 3795442038, Spawn)
 local conversation = CreateConversation()
 AddConversationOption(conversation, "I'll take care of her.", "questoffer2")
 AddConversationOption(conversation, "I've got something else to take care of first.")
 StartConversation(conversation, NPC, Spawn, "Find Laena.  Kill her.  I'd do it myself, but I fear that seeing her again might weaken my resolve.  She could be anywhere on this island.  Once she's out of the way, I won't be tempted again and my family's honor will not be stained.  For all I know, she was put here specifically to entice men like me to falter.")
 end

function isdead(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker010.mp3", "", "nod", 2230888578, 3016454691, Spawn)
local conversation = CreateConversation()
if GetQuestStep(Spawn, InTheNameOfHonor) == 6 then
AddConversationOption(conversation, "Yes.  Do you want details?", "dlg_2_4")
end
AddConversationOption(conversation, "I'm still searching for the wench.")
StartConversation(conversation, NPC, Spawn, "Is she...dead?")
end

function dlg_2_4(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker011.mp3", "", "no", 3557914078, 266939946, Spawn)
local conversation = CreateConversation()
AddConversationOption(conversation, "To tell the truth, I don't know how she died.  She was dead when I found her.", "dlg_2_5")
StartConversation(conversation, NPC, Spawn, "I don't care for details.  I...just want to make sure she died with honor.")
end

function dlg_2_5(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, InTheNameOfHonor, 6)
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker012.mp3", "", "ponder", 4109402051, 786259154, Spawn)
local conversation = CreateConversation()
AddConversationOption(conversation, "You're welcome.")
StartConversation(conversation, NPC, Spawn, "I see.  I hadn't expected that.  The main thing is that Laena will no longer...bother me.  I wonder, though...who could've killed her?  We may never know...and I can marry my betrothed in peace. Thank you, " .. GetName(Spawn) .. ". ")

end


function questoffer2(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, InTheNameOfHonor)
local conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker020.mp3", "", "", 3837612635, 962972593, Spawn)
AddConversationOption(conversation, "Easy to you to say.")
StartConversation(conversation, NPC, Spawn, "There's no time like the present.")
end

-- THE TUNARIAN PLOT

function dlg_3_1(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, TheTunarianPlot, 5)
PlayFlavor(NPC, "voiceover/english/tutorial_revamp/charles_arker/tutorial_island02_evil_revamp/quests/quest_charles_arker/charles_arker014.mp3", "", "no", 4112615277, 2509927086, Spawn)
local conversation = CreateConversation()
AddConversationOption(conversation, "All right.  I'll see you there.")
StartConversation(conversation, NPC, Spawn, "I can't speak of it here.  It is very important that we draw no attention to ourselves.  Meet me in the Wilderwood.  There's a shallow alcove known as ''the Nook'' beyond the trees, along the northern wall.")
end

   
 
  

