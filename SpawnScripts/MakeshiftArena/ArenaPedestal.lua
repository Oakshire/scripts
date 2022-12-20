--[[
    Script Name    : SpawnScripts/MakeshiftArena/ArenaPedestal.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.19 01:12:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetTempVariable(NPC,"Starting","false")
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Address the Audience' and not IsInCombat(Spawn)then
      local con = CreateConversation()
        AddConversationOption(con, "[Taunt the crowd]","Taunt")
        AddConversationOption(con, "[Show off your weapon]","Flex")
        AddConversationOption(con, "[Howl in anger]","Yell")
        AddConversationOption(con, "[Goof around]","Goof")
        StartDialogConversation(con, 1, NPC, Spawn, "You stand before a crowd of onlookers hoping to enjoy the sight of combat. How will you address them?")
        MoveToLocation(Spawn,7.23, 0.14, 5.61)
        SetHeading(Spawn,230)
end
end

function Taunt(NPC,Spawn)
    PlayFlavor(Spawn,"","","taunt",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    AddTimer(NPC,5000,"Doors",1,Spawn)
    AddTimer(NPC,7000,"Bears",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end    

function Flex(NPC,Spawn)
    PlayFlavor(Spawn,"","","brandish",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    AddTimer(NPC,5000,"Doors",1,Spawn)
    AddTimer(NPC,7000,"Bears",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end   

function Yell(NPC,Spawn)
    PlayFlavor(Spawn,"","","howl",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    AddTimer(NPC,5000,"Doors",1,Spawn)
    AddTimer(NPC,7000,"Bears",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end   

function Goof(NPC,Spawn)
    PlayFlavor(Spawn,"","","neener",0,0)
    AddTimer(NPC,2000,"Cheer",1,Spawn)
    AddTimer(NPC,5000,"Doors",1,Spawn)
    AddTimer(NPC,7000,"Bears",1,Spawn)
    SetAccessToEntityCommand(Spawn,NPC,"Address the Audience", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    CloseConversation(NPC,Spawn)
    PlaySound(Spawn,"sounds/e3_scripted/mage_ohh01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end 

function Cheer(NPC,Spawn)
    PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_clap001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end

function Doors(NPC,Spawn)
                PlaySound(NPC,"sounds/widgets/doors/door_mech_close001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    SendPopUpMessage(Spawn,"Doors to north open revealing your first opponents",250,250,250)
end

function Bears(NPC,Spawn)
zone = GetZone(NPC)
Bear1 = GetSpawnByLocationID(zone,133781388)    
Bear2 = GetSpawnByLocationID(zone,133781389)  
        if GetSpawnByGroupID(zone, 1053519) ==nil then
            SpawnGroupByID(zone,1053519)    
        end
end


function respawn(NPC)
	spawn(NPC)
end