--[[
    Script Name    : SpawnScripts/Freeport/JojoKaranja.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 04:07:44
    Script Purpose : 
                   : 
--]]

local TheLoverbirdsRoost = 449


function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetQuestStep(Spawn,  TheLoverbirdsRoost) ~= 1 then
    PlayFlavor(NPC, "", "Greetings, friend... Come sit awhile if you are weary from travel.", "", 1689589577, 4560189, Spawn)
    elseif GetQuestStep(Spawn,  TheLoverbirdsRoost) == 1 then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Ferink sent me to talk with you. He thinks that somehow you can help his mother get over Amoora being... well... a Kerran.", "Option1")
	StartConversation(conversation, NPC, Spawn, "May the sun shine upon you. What can Jojo do for you today?")
end
    end
  
function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, she will have nothing to do with Amoora.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Ahh, Ferink. Riki, I do believe, is his lovely mother. Yes, yes. Nothing is more forgiving and pure than young love. It seems that Riki has forgotten that.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes?", "Option3")
	StartConversation(conversation, NPC, Spawn, "It seems I recall a time long ago when Riki's family was having trouble with the local orc savages. They were on the brink of moving when a traveler came to stay and do some work on their homestead.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That's a great story, Jojo, but what does it have to do with Ferink's problem?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Well, as it turns out, this kind fellow not only worked hard in their fields, but helped them fight back the orc scourge and rebuild some of their homes afterward.")
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn,  TheLoverbirdsRoost, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will do that. Thank you, Jojo.")
	StartConversation(conversation, NPC, Spawn, "Well, you see, as it turns out this kind fellow was also a kind feline. As Kerran as they come. It appears that Riki has forgotten that all people cannot be judged on the actions of few. Here, give her this necklace and ask her to remember Duia. That may help you, child.")
end




function respawn(NPC)

end

