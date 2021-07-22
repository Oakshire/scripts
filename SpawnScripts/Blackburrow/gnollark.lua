--[[
    Script Name    : SpawnScripts/Blackburrow/gnollark.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 07:07:53
    Script Purpose : 
                   : 
--]]

local ScrawlingsInTheDark = 5329

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'inspect' then
               conversation = CreateConversation()
               if HasQuest(Spawn, ScrawlingsInTheDark) and  not QuestStepIsComplete(Spawn, ScrawlingsInTheDark, 1) then
               AddConversationOption(conversation, "Open the chest.", "option1")
               end
               AddConversationOption(conversation, "Leave the chest alone.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "This chest is highly ornate for a gnoll container. It has gold inlay and images of what appears to be some sort of gnoll deity scooping up humans into its maw has been painted onto it.")
    end
end

function option1(NPC, Spawn)
                                 conversation = CreateConversation()
                              AddConversationOption(conversation, "Take the tome.", "step_complete")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Inside the chest the walls are adorned with gems both valuable and mundane. At the center rests a horrid looking tome bound with a fur pelt.")
end

function step_complete(NPC, Spawn)
SetStepComplete(Spawn, ScrawlingsInTheDark, 1)
SummonItem(Spawn, 14236, 1)
end

function respawn(NPC)
	spawn(NPC)
end