--[[
    Script Name    : SpawnScripts/Commonlands/SurveyorMenak.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.23 09:05:52
    Script Purpose : 
                   : 
--]]

local WheelOfVaniki = 5230

function spawn(NPC)
ProvidesQuest(NPC, WheelOfVaniki)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, WheelOfVaniki) and not HasCompletedQuest(Spawn, WheelOfVaniki) then
	AddConversationOption(conversation, "What are you doing?", "Option1")
	elseif GetQuestStep(Spawn,  WheelOfVaniki) == 2 then
		AddConversationOption(conversation, "I'm not sure if this is what you were looking for.", "Option5")    
	end
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "Yes?  You are asking a question to be answered?")
	PlayAnimation(NPC, 11882)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What about the stuff that's already here?", "Option2")
	StartConversation(conversation, NPC, Spawn, "I am looking at things.  Looking closely.  All this land unused!  Unused!  That is a waste.  We will fix that.  We know our way around dirt!  Dig up some here, push dirt aside there.  Yes, yes; this is perfect.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Drafts?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Nothing stands in the way of progress!  They may stay or they may go.  Might be better if they go, so the dra...drafts do not upset them.  Digging goes on, very drafty.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What kinds of things?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Wind blowing.  Smell that? That is why we are good at this: our noses are very sensitive.  The littlest change in the air and we know.  Some things are here at our feet.  Other things are farther away.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I could try.", "offer")
	AddConversationOption(conversation, "You've told me all I need to know.")
	StartConversation(conversation, NPC, Spawn, "One thing we smell is that which we seek.  Our investors tell us what we must seek.  It is underground and so we dig.  Our engineer studies how to get what we seek.  Ask the engineer about the dirty work. The other thing we smell is that which we want.  Your legs are long.  Can you help us find what we want?")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Huh?", "Option6")
	StartConversation(conversation, NPC, Spawn, "Let me see! Let me see!  Oooooh.  Yes and no.  Yes, it is something that we seek.  No, it is not exactly what we hoped you would find.")
end




function Option6(NPC, Spawn)
    SetStepComplete(Spawn, WheelOfVaniki, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Indeed!")
	StartConversation(conversation, NPC, Spawn, "Clearly you can see that this is hollow?  The Wheel is not hollow! They have taken out its precious center and filled it with air! Not good! There must be an explanation.  But where?  I regret I must return to my work but you might ask Engineer Klaaska about this.")
		PlayAnimation(NPC, 11882)
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, WheelOfVaniki)
end




function respawn(NPC)
	spawn(NPC)
end