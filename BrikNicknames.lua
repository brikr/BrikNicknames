_G["LiquidAPI"] = {}
_G["BrikNicknames"] = {}

local nicknames = {}

function BrikNicknames:AddAlias(nick, names)
  for i = 1, #(names) do
    nicknames[names[i]] = nick
  end
end

function LiquidAPI:GetName(unit)
  local real = UnitName(unit)

  if nicknames[real] then
    return nicknames[real]
  end

  return real
end

if not IsAddOnLoaded('ElvUI') then return end
local E = unpack(ElvUI)

E:AddTagInfo('name:nickname', "Brik Nicknames", 'Displays the nickname of the unit', 1)
E:AddTagInfo('name:nickname:short', "Brik Nicknames", 'Displays the nickname of the unit (limited to 10 characters)', 2)

E:AddTag("name:nickname", 'UNIT_NAME_UPDATE', function(unit, _, _)
  if not unit then return end

  return LiquidAPI:GetName(unit)
end)

E:AddTag("name:nickname:short", 'UNIT_NAME_UPDATE', function(unit, _, _)
  if not unit then return end

  return E:ShortenString(LiquidAPI:GetName(unit), 10)
end)
