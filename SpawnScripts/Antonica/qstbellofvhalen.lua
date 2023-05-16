--[[
    Script Name    : SpawnScripts/Antonica/qstbellofvhalen.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.07 07:05:38
    Script Purpose : Copied technique from Jester_Coffin_Widget - not perfect, but does the job.
                   : 
--]]
local FallenBell = 5811

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Touch the bell' then
      local con = CreateConversation()
        if not HasQuest(Spawn, FallenBell) and not HasCompletedQuest(Spawn, FallenBell) then
        AddConversationOption(con, "Embrace the images.", "offer")
        AddConversationOption(con, "Leave the bell.")
        StartDialogConversation(con, 1, NPC, Spawn, "As your hand brushes across the cool surface of the fallen bell your mind is flooded with images... \n\nRinging!... \nRinging to warn the others... \nThe sky is buring... \nThe moon torn asunder... \nCrashing and toppling this very tower! \nGnolls... \nGnolls everywhere! \nTaking advantage of the chaos... \nStriking down those trying to flee...")
        elseif HasCompletedQuest(Spawn, FallenBell) then
        AddConversationOption(con, "I hope my actions were enough to avenge the fallen.")
        StartDialogConversation(con, 1, NPC, Spawn, "The cold bell lies unresponsive to your touch. The solace of this crumbled tower is peaceful compared to the turmoil it has endured.")
        elseif HasQuest(Spawn, FallenBell) and not HasCompletedQuest(Spawn, FallenBell) then
        AddConversationOption(con, "I must kill more gnolls!")
        StartDialogConversation(con, 1, NPC, Spawn, "As your hand brushes across the cool surface of the fallen bell your mind is flooded with images... \n\nRinging!... \nRinging to warn the others... \nThe sky is buring... \nThe moon torn asunder... \nCrashing and toppling this very tower! \nGnolls... \nGnolls everywhere! \nTaking advantage of the chaos... \nStriking down those trying to flee...")
        end
end
end

function offer(NPC, Spawn)
       OfferQuest(NPC, Spawn, FallenBell)
        PlaySound(Spawn,"sounds/widgets/alarms_clues_traps/alarm_bell_qeynos002.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
        PlaySound(Spawn,"sounds/widgets/triggered_environmental/enviro_rockcrack001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
        PlaySound(Spawn,"sounds/objectsandparticlesounds/amb_marinersbell_005.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
        AddTimer(NPC,2000,"Rocks2",1,Spawn)
    CloseConversation(NPC,Spawn)
	PerformCameraShake(Spawn, 0.699999988079071)	
	PerformCameraShake(Spawn, 0.5)	
	PerformCameraShake(Spawn, 0.30000001192092896)
	PerformCameraShake(Spawn, 0.10000000149011612)                
end

function Rocks2(NPC,Spawn)
    	PerformCameraShake(Spawn, 0.10000001192092896)
        PlaySound(Spawn,"sounds/widgets/triggered_environmental/enviro_rockcrack001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end


function respawn(NPC)
	spawn(NPC)
end