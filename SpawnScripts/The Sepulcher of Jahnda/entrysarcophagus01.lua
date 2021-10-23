--[[
    Script Name    : SpawnScripts/The Sepulcher of Jahnda/entrysarcophagus01.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.22 06:10:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Whisper a prayer' then
	SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)	    
    SetTempVariable(Spawn, "sarcophagus1_used", "true")
    if GetTempVariable(Spawn, "sarcophagus1_used") == "true" and GetTempVariable(Spawn, "sarcophagus2_used") == "true" and  GetTempVariable(Spawn, "sarcophagus3_used") == "true" and GetTempVariable(Spawn, "sarcophagus4_used") == "true" and GetTempVariable(Spawn, "sarcophagus5_used") == "true" and GetTempVariable(Spawn, "sarcophagus6_used") == "true"  then
            SetTempVariable(Spawn, "MobAccess", "true")
      SetTempVariable(Spawn, "sarcophagus1_used", "false")
      SetTempVariable(Spawn, "sarcophagus2_used", "false")
      SetTempVariable(Spawn, "sarcophagus3_used", "false")
      SetTempVariable(Spawn, "sarcophagus4_used", "false")
      SetTempVariable(Spawn, "sarcophagus5_used", "false")
      SetTempVariable(Spawn, "sarcophagus6_used", "false")
       end
    end
end

function respawn(NPC)
	spawn(NPC)
end
   