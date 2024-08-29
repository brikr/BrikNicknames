_G["LiquidAPI"] = {}
_G["NSAPI"] = {}
_G["BrikNicknames"] = {}

local nicknames = {}

function BrikNicknames:AddAlias(nick, names)
  for i = 1, #(names) do
    nicknames[names[i]] = nick
  end
end

function BrikNicknames:GetName(unit)
  local real = UnitName(unit)

  if nicknames[real] then
    return nicknames[real]
  end

  return real
end

-- Mock the Liquid / Northern Sky functions so their Weakauras use our nicknames
function LiquidAPI:GetName(unit)
  return BrikNicknames:GetName(unit)
end

function NSAPI:GetName(unit)
  return BrikNicknames:GetName(unit)
end
