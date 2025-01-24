--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Copyright (C) 2015-present, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        find_ar6x.lua
--

-- imports
import("lib.detect.find_program")
import("lib.detect.find_programver")

-- find ar6x
--
-- @param opt   the argument options, e.g. {version = true}
--
-- @return      program, version
--
-- @code
--
-- local ar6x = find_ar6x()
-- local ar6x, version = find_ar6x({program = "ar6x", version = true})
--
-- @endcode
--
function main(opt)
    opt = opt or {}
    opt.check = "--help"
    opt.command = "--help"
    local program = find_program(opt.program or "ar6x", opt)
    local version = nil
    if program and opt.version then
        version = find_programver(program, opt)
    end
    return program, version
end
