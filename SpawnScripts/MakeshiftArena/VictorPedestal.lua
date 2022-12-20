--[[
    Script Name    : SpawnScripts/MakeshiftArena/VictorPedestal.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.19 03:12:10
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
                zone = GetZone(NPC)
                StartPodium = GetSpawnByLocationID(zone,133781327)
                if StartPodium ~=nil then
                    Despawn(StartPodium)
                end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Address the Audience' and not IsInCombat(Spawn)then
      local con = CreateConversation()
        AddConversationOption(con, "[Bow in victory]","Bow")
        AddConversationOption(con, "[Show off to the crowd]","Flex")
        AddConversationOption(con, "[Threaten all that challenge you]","Taunt")
        AddConversationOption(con, "[Blow your admirers a kiss]","Kiss")
        AddConversationOption(con, "[Jump for joy]","Goof")
        StartDialogConversation(con, 1, NPC, Spawn, "You were victorious! Proclaim yourself a true warrior.")
        MoveToLocation(Spawn,7.23, 0.14, 5.61)
        SetHeading(Spawn,230)
end
end

function Taunt(NPC,Spawn)
    PlayFlavor(Spawn,"","","feint",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end    

function Bow(NPC,Spawn)
    PlayFlavor(Spawn,"","","bow",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end    

function Flex(NPC,Spawn)
    PlayFlavor(Spawn,"","","flex",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end   

function Kiss(NPC,Spawn)
    PlayFlavor(Spawn,"","","kiss",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end 

function Goof(NPC,Spawn)
    PlayFlavor(Spawn,"","","heelclick",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end   

function respawn(NPC)
	spawn(NPC)
end

function Cheer(NPC,Spawn)
    PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_cheer001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                zone = GetZone(NPC)
                StartPodium = GetSpawnByLocationID(zone,133781404)
                if StartPodium ~=nil then
                    Despawn(StartPodium)
                end
    if HasQuest(Spawn,5791) then
        SetStepComplete(Spawn,5791,3)
    end
end