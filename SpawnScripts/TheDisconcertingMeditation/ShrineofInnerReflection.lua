--[[
    Script Name    : SpawnScripts/TheDisconcertingMeditation/ShrineofInnerReflection.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.21 03:11:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5774,1,0,0,1)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Begin Meditation' and not IsInCombat(Spawn)then
      local con = CreateConversation()
        AddConversationOption(con, "Close your eyes...","Step2")
        StartDialogConversation(con, 1, NPC, Spawn, "Calming yourself after the combat with the shade proves to be difficult.  Looking back on the recent events, you attempt to focus your mind and will yourself into a state of relaxation.")
--        SendMessage(Spawn,"Calming yourself after the combat with the shade proves to be difficult.  Looking back on the recent events, you attempt to focus your mind and will yourself into a state of relaxation.")
        ApplySpellVisual(NPC,572)
end
end

function Step2(NPC, Spawn)
      local con = CreateConversation()
        AddConversationOption(con, "Breathe deeply...","Step3")
        StartDialogConversation(con, 1, NPC, Spawn, "The creature you faced seems to bear some significance, for you know you have never faced one. You can think of nothing that you have done to draw the ire of something like this, but it seems to be your destiny to cross paths with them... at least, if this meditation serves its purpose.")
--        SendMessage(Spawn,"The creature you faced seems to bear some significance, for you know you have never faced one. You can think of nothing that you have done to draw the ire of something like this, but it seems to be your destiny to cross paths with them... at least, if this meditation serves its purpose.")
end


function Step3(NPC, Spawn)
      local con = CreateConversation()
        SetStepComplete(Spawn,5774,1)
        AddConversationOption(con, "Reflect...","Reflect")
        StartDialogConversation(con, 1, NPC, Spawn, "You turn your attention back to a more worldly task and begin trying to wake yourself from the state.  Soon, the room fades out, and your body begins to stir.")
--        SendMessage(Spawn,"You turn your attention back to a more worldly task and begin trying to wake yourself from the state.  Soon, the room fades out, and your body begins to stir.")
        ApplySpellVisual(NPC,728)
        ApplySpellVisual(Spawn,572)
end

function Reflect(NPC,Spawn)
        NQ = GetZone("northqeynos")
       Zone(NQ,Spawn,281.55, -13.58, 97.29, 283.43)
        SpawnSet(Player,"visual_state",0)
        CloseConversation(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end