--[[
    Script Name    : SpawnScripts/SorcerersTrial/ChannelingOrb.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.13 03:11:35
    Script Purpose : 
                   : 
--]]
function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Channel ether' then
      local con = CreateConversation()
       AddConversationOption(con, "Begin the trial. Focus energies into the crystal.", "offer")
        AddConversationOption(con, "Leave the orb alone.","CloseConversation")
        StartDialogConversation(con, 1, NPC, Spawn, "The ether crackles around you as you focus on the channeling orb. Do you wish to begin the Sorcerer's trial?")
end
end


function offer(NPC, Spawn)
    CloseConversation(NPC, Spawn)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    ApplySpellVisual(NPC,18)
    AddTimer(NPC,1500,"Ring",1,Spawn) 
    AddTimer(NPC,2000,"Ring2",1,Spawn) 
    AddTimer(NPC,3500,"Ring3",1,Spawn) 
    AddTimer(NPC,5000,"Ring4",1,Spawn) 
    end

function Ring(NPC, Spawn)
    local zone = GetZone(Spawn)
    SpawnSet(NPC,"model_type",2306)
    SpawnSet(NPC,"size",30)
end   

function Ring2(NPC, Spawn)
    local zone = GetZone(Spawn)
    RingSpawn = SpawnByLocationID(zone,133780600)
end    
   
function Ring3(NPC, Spawn)
    ApplySpellVisual(NPC,100)
end

 function Ring4(NPC, Spawn)
     local zone = GetZone(Spawn)
    EnergyGuard = SpawnByLocationID(zone,133780631) 
end

function respawn(NPC)
	spawn(NPC)
end




