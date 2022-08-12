--[[
    Script Name    : SpawnScripts/Antonica/lockboxquest.lua
    Script Author  : Premierio015
    Script Date    : 2022.08.11 08:08:28
    Script Purpose : 
                   : 
--]]

local PeckettsPatrol = 5715

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect' then
      local con = CreateConversation()
       AddConversationOption(con, "Pick up the logbook that is inside", "con1")
        AddConversationOption(con, "Close the lockerbox")
        StartDialogConversation(con, 1, NPC, Spawn, "This is a Qeynos Guard Lockerbox of the Tower Guard regiment, Coldwind Point Garrison. It is filled with supplies and administrative tomes for the garrison.")
end
end

function con1(NPC, Spawn)
      local con = CreateConversation()
       AddConversationOption(con, "Open the logbook.", "con2")
        AddConversationOption(con, "Put the logbook away")
        StartDialogConversation(con, 1, NPC, Spawn, "This is a leather bound guard logbook. It has the emblem and name of the Qeynos Guard, Tower Guard Regiment on it.")
end


function con2(NPC, Spawn)
      local con = CreateConversation()
      if not HasQuest(Spawn, PeckettsPatrol) and not HasCompletedQuest(Spawn, PeckettsPatrol) then
       AddConversationOption(con, "Put the logbook back and help the garrison.", "offer")
       end
        AddConversationOption(con, "Stop your inspection")
        StartDialogConversation(con, 1, NPC, Spawn, "The Coldwind Point Garrison, Qeynos Guard Tower Guard Regiment.     Captain Antillin CO     We have taken a critical hit in our defenses. Both Guard Nimegin and Bollin have been slain in combat with a horde of gnolls wishing to claim the lighthouse. The gnolls managed to thieve a map of Qeynos kept on post. I will be taking the bulk of the squad to give chase and retrieve the map. Until then, Corporal Peckett and a few guards will be our only defense. He must wait for reinforcements to provide the local patrol or create a militia of adventurers so that the patrol can be accomplished.     DO NOT REMOVE THIS LOGBOOK by Order of the Qeynos Guard.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, PeckettsPatrol)
end

function respawn(NPC)
	spawn(NPC)
end