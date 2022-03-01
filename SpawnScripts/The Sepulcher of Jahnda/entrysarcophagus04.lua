--[[
    Script Name    : SpawnScripts/The Sepulcher of Jahnda/entrysarcophagus04.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.22 07:10:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Whisper a prayer' then
	SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)	    
    SetTempVariable(Spawn, "sarcophagus4_used", "true")
    if GetTempVariable(Spawn, "sarcophagus1_used") == "true" and GetTempVariable(Spawn, "sarcophagus2_used") == "true" and  GetTempVariable(Spawn, "sarcophagus3_used") == "true" and GetTempVariable(Spawn, "sarcophagus4_used") == "true" and GetTempVariable(Spawn, "sarcophagus5_used") == "true" and GetTempVariable(Spawn, "sarcophagus6_used") == "true"  then
            SetTempVariable(Spawn, "MobAccess", "true")
      SetTempVariable(Spawn, "sarcophagus1_used", "false")
      SetTempVariable(Spawn, "sarcophagus2_used", "false")
      SetTempVariable(Spawn, "sarcophagus3_used", "false")
      SetTempVariable(Spawn, "sarcophagus4_used", "false")
      SetTempVariable(Spawn, "sarcophagus5_used", "false")
      SetTempVariable(Spawn, "sarcophagus6_used", "false")
      SetTempVariable(Spawn, "turn_tonmerk_friendly", "true")
   end
elseif SpellName == 'Defile remains' then
     local zone = GetZone(NPC)
     local object_remains = GetSpawnByLocationID(zone, 133772677) 
     local check_spawn = GetSpawnByLocationID(zone, 133772683)
     if check_spawn == nil then
     local a_desecrated_remains = SpawnByLocationID(zone, 133772683) -- a_desecrated_remains04 ID
     Despawn(object_remains)
     AddTimer(NPC, 4600, "visual_effect", 1)
     end
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetTempVariable(Spawn, "remains_defiled_4", "true")
        if GetTempVariable(Spawn, "remains_defiled_1") == "true" and GetTempVariable(Spawn, "remains_defiled_2") == "true" and GetTempVariable(Spawn, "remains_defiled_3") == "true" and GetTempVariable(Spawn, "remains_defiled_4") == "true" and GetTempVariable(Spawn, "remains_defiled_5") == "true" and GetTempVariable(Spawn, "remains_defiled_6") == "true" then
    SetTempVariable(Spawn, "MobAccess", "true")
        SetTempVariable(Spawn, "turn_tonmerk_hostile", "true")
    end
    end
end

function visual_effect(NPC, Spawn)
  local zone = GetZone(NPC)
  local a_desecrated_remains = GetSpawnByLocationID(zone, 133772683) -- a_desecrated_remains04 ID
  if a_desecrated_remains ~= nil then
  PlayAnimation(a_desecrated_remains, 1300)
  end
end  


function respawn(NPC)
	spawn(NPC)
end