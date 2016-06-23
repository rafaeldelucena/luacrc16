package = "crc16"
version = "1.0-1"
source = {
   url = "..." -- We don't have one yet
}
description = {
   summary = "CRC16 for Lua",
   detailed = [[
      This is an example for the LuaRocks tutorial.
      Here we would put a detailed, typically
      paragraph-long description.
   ]],
   homepage = "https://github.com/youlu-cn/luacrc16", -- We don't have one yet
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.1"
   -- If you depend on other rocks, add them here
}
build = {
    type = "make",
    variables = {
        LUA_INCDIR = "$(LUA_INCDIR)",
        LUA_LIBDIR = "$(LIBDIR)",
        LUA_SHAREDIR = "$(LUADIR)",
    }
}
