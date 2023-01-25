for k in pairs(package.loaded) do
  if k:match(".*maya-ko.*") then
    package.loaded[k] = nil
  end
end

-- print("DEBUG: In colors/maya-ko.lua")
local maya_ko = require('maya-ko')
maya_ko.setup()
